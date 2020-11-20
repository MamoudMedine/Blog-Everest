@extends('layout.layout')

@section('contenu')
    <div class="row justify-content-center mb-3">
        <div class="col-md-8 justify-content-center">
            <h1 class="text-justify mb-1">{{$new->titre??''}}</h1>
            @if(stristr($new->image, 'http'))
                <img src="{{$new->image??''}}" alt="Image article" width="100%" height="400">
            @else
                <img src="{{asset('uploads/'.$new->image)}}" alt="Image article" width="100%" height="400">
            @endif
            <p class="text-justify">{{$new->description??''}}</p>
            <a class="btn btn-dark btn-lg text-light mr-2" href="{{route('user_home')}}">
                <b>Retour</b>
            </a>
            <button article_id="{{$new->id??''}}" class="btn btn-lg btn-primary btn_showMdlCmt">
                <b>Commenter</b>
            </button>
        </div>
        <div class="col-md-4  text-dark">
            <h2 class="text-center mb-2">Commentaires</h2>
            @if(count($comments)>0)
                <ul class="text-justify">
                    @foreach($comments as $comment)
                        <li style="list-style: none;">
                            {{$comment->created_at??''}} - {{$comment->description??''}}
                        </li>
                    @endforeach
                </ul>
            @else
                <h4>Aucun Commentaire disponible</h4>
            @endif
        </div>
    </div>
@endsection
