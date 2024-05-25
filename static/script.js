window.onload = function() {
    // Function to fetch data from the server
    function fetchData() {
        // Make an AJAX request to fetch data from the server
        var xhr = new XMLHttpRequest();
        xhr.open('GET', '/getWeatherData', true); // Replace '/getWeatherData' with the appropriate route on your server
        xhr.onreadystatechange = function() {
            if (xhr.readyState === XMLHttpRequest.DONE) {
                if (xhr.status === 200) {
                    // Parse the JSON response
                    var weatherData = JSON.parse(xhr.responseText);
                    // Display the data on the webpage
                    displayData(weatherData);
                } else {
                    console.error('Failed to fetch data:', xhr.status);
                }
            }
        };
        xhr.send();
    }

    // Function to display the data on the webpage
    function displayData(weatherData) {
        var weatherDataDiv = document.getElementById('weatherData');
        // Clear previous data
        weatherDataDiv.innerHTML = '';
        // Iterate over the weather data and create HTML elements to display it
        weatherData.forEach(function(data) {
            var paragraph = document.createElement('p');
            paragraph.textContent = 'Report ID: ' + data.ReportID + ', Temperature: ' + data.Temperature + ', Wind Speed: ' + data.WindSpeed;
            weatherDataDiv.appendChild(paragraph);
        });
    }

    // Fetch data when the page loads
    fetchData();
};
