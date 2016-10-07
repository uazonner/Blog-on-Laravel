<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="{!! asset('css/bootstrap.min.css') !!}" rel="stylesheet">
    <link href="{!! asset('css/bootstrap-theme.min.css') !!}" rel="stylesheet">
    <title>Document</title>
</head>
<body>
<nav class="navbar navbar-inverse" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">My personal Blog</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li>
                    <a href="#">Главная</a>
                </li>
                <li>
                    <a href="#">Записи</a>
                </li>
                <li>
                    <a href="#">Контакты</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <div class="row">
        <div class="col-lg-8">
            @yield('content')
        </div>
        <div class="col-md-4">
            <div class="well">
                <h4>Search</h4>
                <div>Здесь будет search form</div>
            </div>
        </div>
    </div>

    <hr>

<footer>
    <div class="row">
        <div class="col-lg-12">
            <p>Copyright &copy; My personal Blog 2016</p>
        </div>
    </div>
</footer>
</div>
<script src="{!! asset('js/bootstrap.min.js') !!}"></script>
</body>
</html>