<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Consumo de APIs</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .container {
            margin-bottom: 20px;
        }
        button {
            margin-top: 10px;
            padding: 10px;
            background-color: #007BFF;
            color: white;
            border: none;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
        .response {
            margin-top: 10px;
        }
    </style>
</head>
<body>
<h1>Consumo de APIs</h1>

<div class="container">
    <h2>TRM Colombia</h2>
    <button onclick="fetchTRM()">Obtener TRM</button>
    <div class="response" id="trm-response"></div>
</div>

<div class="container">
    <h2>Clima Actual</h2>
    <button onclick="fetchWeather()">Obtener Clima</button>
    <div class="response" id="weather-response"></div>
</div>

<div class="container">
    <h2>Personaje de Rick and Morty</h2>
    <button onclick="fetchRickAndMorty()">Obtener Personaje</button>
    <div class="response" id="rick-response"></div>
</div>

<script>
    // TRM Colombia API
    function fetchTRM() {
        fetch('https://trm-colombia.vercel.app/?date=2023-12-31')
            .then(response => response.json())
            .then(data => {
                document.getElementById('trm-response').innerHTML = `TRM: ${data.Valor}`;
            })
            .catch(error => {
                console.error('Error fetching TRM:', error);
            });
    }

    // Clima API (Weatherstack)
    function fetchWeather() {
        const apiKey = 'TU_API_KEY_WEATHERSTACK';
        const location = 'Bogota';
        fetch(`http://api.weatherstack.com/current?access_key=${apiKey}&query=${location}`)
            .then(response => response.json())
            .then(data => {
                document.getElementById('weather-response').innerHTML = `
                        Clima en ${location}: ${data.current.temperature}°C, ${data.current.weather_descriptions[0]}
                    `;
            })
            .catch(error => {
                console.error('Error fetching weather:', error);
            });
    }

    // Rick and Morty API
    function fetchRickAndMorty() {
        fetch('https://rickandmortyapi.com/api/character/1')
            .then(response => response.json())
            .then(data => {
                document.getElementById('rick-response').innerHTML = `
                        Personaje: ${data.name}<br>
                        Especie: ${data.species}<br>
                        Estado: ${data.status}
                    `;
            })
            .catch(error => {
                console.error('Error fetching character:', error);
            });
    }
</script>
</body>
</html>
