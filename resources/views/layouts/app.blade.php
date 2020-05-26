<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Alpes one</title>
    
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cookie">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href=  {{ asset("css/app.css") }}>
    <link rel="stylesheet" href=  {{ asset("css/bootstrap.min.css") }}>
    <link rel="stylesheet" href=  {{ asset("css/Pretty-Header.css") }}>
    <link rel="stylesheet" href=  {{ asset("css//styles.css") }}>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="//assets.locaweb.com.br/locastyle/edge/stylesheets/locastyle.css">

</head>

<body>
    <header>
        <nav class="navbar navbar-light navbar-expand-md custom-header pt-4 pb-4 ">
            <div class="container-fluid">
                <div><a class="navbar-brand" href="/">Alpes<span>One </span> </a><button data-toggle="collapse" class="navbar-toggler" data-target="#navbar-collapse"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button></div>
                <div
                    class="collapse navbar-collapse" id="navbar-collapse">
                    <ul class="nav navbar-nav links"></ul>
                    <ul class="nav navbar-nav ml-auto"></ul>
            </div>
            </div>
        </nav>
    </header>

    <div class="row pt-5">
        <div class="col-md-12 text-center">
            <img src="{{ asset('img/logo.png') }}" class="img-responsive img-logo" >
        </div>
    </div>
    <hr>

    {{-- conteudo principal da aplicação --}}
    @yield('conteudo')


    {{-- links js --}}
    <script src = {{ asset("js/bootstrap.min.js") }}></script>
    <script src = {{ asset("js/app.js") }}></script>
    <script src = {{ asset("js/jquery.min.js") }}></script>
    <script type="text/javascript" src="//assets.locaweb.com.br/locastyle/edge/javascripts/locastyle.js"></script>
</body>

</html>