import requests
import pyodbc
from datetime import datetime

# Connection parameters
server = 'DESKTOP-88RESNQ'
database = 'aero'
username = 'SA'
password = 'HJSPASS#1'

# Function to fetch weather data from an external API
def fetch_weather_data(api_url, airport_id):
    response = requests.get(api_url)
    if response.status_code == 200:
        data = response.json()
        # Extract relevant weather information
        temperature = data['main']['temp']
        wind_speed = data['wind']['speed']
        visibility = data['visibility']
        humidity = data['main']['humidity']
        
        # Return the extracted data
        return {
            'AirportID': airport_id,
            'Timestamp': datetime.now(),
            'Temperature': temperature,
            'WindSpeed': wind_speed,
            'Visibility': visibility,
            'Humidity': humidity
        }
    else:
        print(f"Failed to fetch weather data. Status code: {response.status_code}")
        return None

# Function to insert weather data into the WeatherReport table
def insert_weather_data(weather_data):
    connection = pyodbc.connect(
        f'DRIVER={{SQL Server}};SERVER={server};DATABASE={database};UID={username};PWD={password}'
    )
    cursor = connection.cursor()

    query = """
    INSERT INTO WeatherReport (AirportID, Timestamp, Temperature, WindSpeed, Visibility, Humidity)
    VALUES (?, ?, ?, ?, ?, ?)
    """
    cursor.execute(query, weather_data['AirportID'], weather_data['Timestamp'], weather_data['Temperature'], weather_data['WindSpeed'], weather_data['Visibility'], weather_data['Humidity'])
    connection.commit()
    connection.close()

# Example usage
def update_weather_reports():
    # Example airport and corresponding API URL
    airports_and_urls = [
        {'airport_id': 1, 'api_url': 'https://api.openweathermap.org/data/2.5/weather?q=London&appid=YOUR_API_KEY'},
        {'airport_id': 2, 'api_url': 'https://api.openweathermap.org/data/2.5/weather?q=NewYork&appid=YOUR_API_KEY'}
        # Add more airports and their API URLs as needed
    ]

    for entry in airports_and_urls:
        weather_data = fetch_weather_data(entry['api_url'], entry['airport_id'])
        if weather_data:
            insert_weather_data(weather_data)

if __name__ == "__main__":
    update_weather_reports()
