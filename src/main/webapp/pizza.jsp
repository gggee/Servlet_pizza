<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order pizza</title>
    <link rel="stylesheet" type="text/css" href="css/pizza.css">
    <style>
        body {
            display: flex;
            flex-direction: column;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            font-size: 18px;
            text-align: center;
            background-color: #7f152e;
        }
        form {
            background-color: #fef2e4;
            border-radius: 20px;
            padding: 30px;
            color: #805a3b;
        }
        label {
            font-weight: bold;
        }
        input[type="text"],
        input[type="tel"],
        input[type="email"],
        textarea {
            width: 300px;
            padding: 5px;
            margin-bottom: 10px;
            background-color: #fef2e4;
            border-radius: 20px;
            font-family: Arial, sans-serif;
            font-size: 16px;
        }
        input[type="submit"] {
            padding: 10px 20px;
            background-color: #d61800;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-family: Arial, sans-serif;
            font-size: 16px;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        option {
            font-family: Arial, sans-serif;
            font-size: 18px;
        }
        select {
            font-family: Arial, sans-serif;
            font-size: 18px;
            background-color: #fef2e4;
            border-radius: 20px;
            padding: 10px;
        }
        .map {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <h1>Choose a pizza</h1>
    <form id="pizzaForm" action="pizza" method="post">
        <label for="pizza">Pizza:</label>
        <select id="pizza" name="pizza">
            <option value="Margarita">Margarita</option>
            <option value="Four cheeses">Four cheeses</option>
            <option value="Capricciosa">Capricciosa</option>
            <option value="Hawaiian">Hawaiian</option>
        </select><br><br>

        <label>Select toppings:</label><br>
        <input type="checkbox" id="olives" name="toppings" value="Olives">
        <label for="olives">Olives</label><br>
        <input type="checkbox" id="capers" name="toppings" value="Capers">
        <label for="capers">Capers</label><br>
        <input type="checkbox" id="extraCheese" name="toppings" value="Double cheese">
        <label for="extraCheese">Double cheese</label><br><br>

        <label for="name">Name:</label>
        <input type="text" id="name" name="name"><br><br>
        <label for="phone">Phone:</label>
        <input type="tel" id="phone" name="phone"><br><br>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email"><br><br>
        <label for="address">Delivery address:</label>
        <textarea id="address" name="address"></textarea><br><br>

        <div class="map">
            <p>Delivery area (in the area towards Republic Avenue):</p>
            <img src="img/map.jpg" alt="Delivery Map" width="500">
        </div><br>
        <input type="submit" value="Order">
    </form>
</body>
</html>
