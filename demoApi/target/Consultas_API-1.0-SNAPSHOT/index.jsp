<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Inicio de pagina</title>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: goldenrod;
        }
        .card-custom {
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s, box-shadow 0.3s;
        }
        .card-custom:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
        }
        .fade-in {
            opacity: 0;
            animation: fadeIn 1s forwards;
        }
        @keyframes fadeIn {
            to {
                opacity: 1;
            }
        }
    </style>
</head>
<body class="fade-in">
<nav class="navbar navbar-expand-lg navbar-dark bg-primary mb-4">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Navega estas API</a>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" href="index.jsp">Menu principal</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="trm.jsp">Revisa la TRM</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="clima.jsp">Revisa el Clima</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <h1 class="text-center mb-4">Menu de API</h1>

    <div class="row">
        <div class="col-md-4 mb-3 fade-in">
            <div class="card card-custom">
                <div class="card-body">
                    <h5 class="card-title">TRM aqui</h5>
                    <p class="card-text">Consulta la Trm de una fecha especifica.</p>
                    <a href="trm.jsp" class="btn btn-primary w-100">Encuentra una TRM</a>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-3 fade-in">
            <div class="card card-custom">
                <div class="card-body">
                    <h5 class="card-title">Clima aqui</h5>
                    <p class="card-text">Informacion meteorologica de distintas ciudades</p>
                    <a href="clima.jsp" class="btn btn-primary w-100">Encuentra el Clima</a>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
