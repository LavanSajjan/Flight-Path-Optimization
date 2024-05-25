from flask import Flask, request, jsonify
import requests

app = Flask(__name__)

def fetch_weather_alerts(area_code):
    url = f"https://api.weather.gov/alerts/active?area={area_code}"
    response = requests.get(url)
    
    if response.status_code == 200:
        data = response.json()
        return data
    else:
        print(f"Failed to fetch weather alerts. Status code: {response.status_code}")
        return None

@app.route('/weather-alerts')
def get_weather_alerts():
    area_code = request.args.get('area')
    if not area_code:
        return jsonify({"error": "Area code parameter is required."}), 400

    weather_alerts = fetch_weather_alerts(area_code)

    if weather_alerts:
        alerts_data = []
        for alert in weather_alerts["features"]:
            alert_info = {
                "event": alert["properties"]["event"],
                "description": alert["properties"]["headline"],
                "severity": alert["properties"]["severity"],
                "effective": alert["properties"]["effective"],
                "expires": alert["properties"]["expires"]
            }
            alerts_data.append(alert_info)

        return jsonify({"alerts": alerts_data})
    else:
        return jsonify({"error": "No weather alerts found."}), 404

if __name__ == '__main__':
    app.run(debug=True)
