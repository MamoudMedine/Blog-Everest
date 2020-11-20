<!doctype html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Everest Blog|Administration</title>
@include('admin.layout.header') <!-- HEADER -->
</head>
<body>
<!--  CONTENU   -->
<div class="container-fluid">
    <div class="row bg-dark text-light mb-2 p-2">
        <h1 class="text-left">BLOG EVEREST</h1>
        <h1 class="text-center mx-auto">Espace d'administration</h1>
        <h5
            class="text-right">{{session('nom_user')}}({{session('email_user')}})&nbsp;
            <button url_logout="{{route('logout')}}" class="btn btn-danger btn-sm btn_logout"><b>Se déconnecter</b></button>
        </h5>

    </div>
    <div class="container">
        @yield('contenu')
    </div>
</div>
<!--  FIN CONTENU   -->
   <div style="bottom: 0; width: 100%;padding: 15px;background-color: #1b1e21;color: white;">
      <b>@copyright 2020 / Diakité mamoud</b>
   </div>
   @include('admin.layout.footer') <!-- FOOTER -->
</body>
</html>
