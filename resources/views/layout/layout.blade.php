<!doctype html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Everest Blog</title>
    @include('layout.header') <!-- HEADER -->
</head>
<body>
  <header class="mb-3">

  </header>
  <!--  CONTENU   -->
    <div class="container mb-3">
        @yield('contenu')
    </div>
  <!--  FIN CONTENU   -->
  <footer>

  </footer>
     @include('layout.footer') <!-- FOOTER -->
</body>
</html>
