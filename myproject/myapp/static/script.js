window.onload = function() {
    // Function to fetch data from the server
    function fetchData() {
        // Make an AJAX request to fetch data from the server
        var xhr = new XMLHttpRequest();
        xhr.open('GET', 'http://127.0.0.1:8000/getWeatherData/', true); // Replace '/getWeatherData/' with your Django URL
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
        // Create a new div element for each data entry
        var dataDiv = document.createElement('div');
        // Set the class of the div element for styling
        dataDiv.className = 'weather-entry';
        // Create a paragraph element to display the weather report
        var paragraph = document.createElement('p');
        // Set the text content of the paragraph to the weather report
        paragraph.textContent = 'Report ID: ' + data.ReportID + ', Temperature: ' + data.Temperature + ', Wind Speed: ' + data.WindSpeed;
        // Append the paragraph element to the div
        dataDiv.appendChild(paragraph);
        // Append the div to the weatherDataDiv
        weatherDataDiv.appendChild(dataDiv);
    });
}

    // Fetch data when the page loads
    fetchData();
};
