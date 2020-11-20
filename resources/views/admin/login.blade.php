<!doctype html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Everest Blog|Authentification</title>
    @include('admin.layout.header') <!-- HEADER -->
</head>
<body>
<div class="container">
    <div class="mb-5"><span class="show_errors"></span></div>
    <div class="row justify-content-center">
        <div class="col-md-6 mx-auto pt-5 justify-content-center">
            <h2 class="text-center">BLOG EVEREST | Authentification</h2>
            <form id="login_form" action="{{route('make_login')}}">
                @csrf
                <div class="form-group">
                    <label for="email">Email*</label>
                    <input type="email" name="email" id="email" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="mdp">Mot de passe*</label>
                    <input type="password" name="mdp" id="mdp" class="form-control" required>
                </div>
            </form>
            <div class="text-center">
                <button class="btn btn-lg btn-success btn_login">
                    <b>Se Connecter</b>
                </button>
            </div>
        </div>
    </div>
</div>
@include('admin.layout.footer') <!-- FOOTER -->
</body>
</html>
