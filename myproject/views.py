from django.shortcuts import render
from .dijkstra import AirportGraph, fetch_weather_penalties
import pyodbc

# Connection parameters
server = 'DESKTOP-88RESNQ'
database = 'aero'
username = 'SA'
password = 'HJSPASS#1'

def index(request):
    # Fetch the weather data
    weather_data = get_weather_data()
    # Pass the data to the template
    return render(request, 'index.html', {'weather_data': weather_data})

def get_weather_data():
    connection = pyodbc.connect(
        f'DRIVER={{SQL Server}};SERVER={server};DATABASE={database};UID={username};PWD={password}'
    )
    cursor = connection.cursor()
    cursor.execute('SELECT TOP 1 reportid, temperature, windspeed FROM WeatherReport')
    rows = cursor.fetchall()
    connection.close()
    weather_data = [{'ReportID': row[0], 'Temperature': row[1], 'WindSpeed': row[2]} for row in rows]
    return weather_data

def calculate_flight_path(request):
    # Initialize the graph
    airport_graph = AirportGraph()

    # Add airports and routes (example data, you should replace it with actual data fetching logic)
    airport_graph.add_airport(1)  # Example: Airport with ID 1
    airport_graph.add_airport(2)  # Example: Airport with ID 2
    airport_graph.add_route(1, 2, 500)  # Example: Route from Airport 1 to Airport 2 with distance 500 km

    # Fetch weather penalties and set them in the graph
    weather_penalties = fetch_weather_penalties()
    for airport_id, penalty in weather_penalties.items():
        airport_graph.set_weather_penalty(airport_id, penalty)

    # Specify the departure and arrival airports
    departure_airport = 1  # Replace with actual departure airport ID
    arrival_airport = 2    # Replace with actual arrival airport ID

    # Calculate the shortest path distance and path using Dijkstra's algorithm
    shortest_distance, path = airport_graph.dijkstra(departure_airport, arrival_airport)

    if shortest_distance is None:
        message = f"Destination Airport {arrival_airport} is unreachable from Airport {departure_airport}."
    else:
        message = f"Shortest distance from Airport {departure_airport} to Airport {arrival_airport}: {shortest_distance} km. Optimal path: {' -> '.join(map(str, path))}"

    # Fetch the weather data
    weather_data = get_weather_data()

    return render(request, 'flight_path.html', {'message': message, 'weather_data': weather_data})
