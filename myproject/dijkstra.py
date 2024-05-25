import heapq
import pyodbc

class AirportGraph:
    def __init__(self):
        self.graph = {}  # Dictionary to store airport connections
        self.weather_penalties = {}  # Dictionary to store weather penalties for airports

    def add_airport(self, airport_id):
        self.graph[airport_id] = []

    def add_route(self, airport_id, destination_id, distance):
        self.graph[airport_id].append((destination_id, distance))
        self.graph[destination_id].append((airport_id, distance))  # Assuming bidirectional routes

    def set_weather_penalty(self, airport_id, penalty):
        self.weather_penalties[airport_id] = penalty

    def dijkstra(self, start, end):
        min_distance = {airport: float('inf') for airport in self.graph}
        min_distance[start] = 0
        queue = [(0, start)]
        previous_airport = {}  # To track the path

        while queue:
            dist, current = heapq.heappop(queue)
            if current == end:
                break

            for neighbor, edge_dist in self.graph[current]:
                weather_penalty = self.weather_penalties.get(neighbor, 0)
                total_dist = dist + edge_dist + weather_penalty
                if total_dist < min_distance[neighbor]:
                    min_distance[neighbor] = total_dist
                    previous_airport[neighbor] = current
                    heapq.heappush(queue, (total_dist, neighbor))

        if min_distance[end] == float('inf'):
            return None, None  # Destination is unreachable

        # Build the path
        path = []
        while end != start:
            path.append(end)
            end = previous_airport[end]
        path.append(start)
        path.reverse()

        return min_distance[path[-1]], path

def fetch_weather_penalties():
    server = 'DESKTOP-88RESNQ'
    database = 'aero'
    username = 'SA'
    password = 'HJSPASS#1'

    connection = pyodbc.connect(
        f'DRIVER={{SQL Server}};SERVER={server};DATABASE={database};UID={username};PWD={password}'
    )
    cursor = connection.cursor()

    cursor.execute('SELECT AirportID, Temperature, WindSpeed, Visibility, Humidity FROM WeatherReport')
    rows = cursor.fetchall()
    connection.close()

    weather_penalties = {}
    for row in rows:
        airport_id = row[0]
        temperature = row[1]
        wind_speed = row[2]
        visibility = row[3]
        humidity = row[4]

        # Calculate a simple weather penalty based on conditions
        penalty = 0
        if temperature < -10 or temperature > 40:
            penalty += 10  # Extreme temperatures
        if wind_speed > 20:
            penalty += 10  # High wind speed
        if visibility < 1000:
            penalty += 10  # Low visibility
        if humidity > 90:
            penalty += 5   # High humidity

        weather_penalties[airport_id] = penalty

    return weather_penalties
