@extends('layout.layout')

@section('contenu')
    <div class="row justify-content-center mb-3">
        @if(count($news) > 0)
            @foreach($news as $new)
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="card border-0">
                        <h1 class="card-title">{{$new->titre??''}}</h1>
                        @if(stristr($new->image, 'http'))
                            <img src="{{$new->image??''}}" alt="Image article" width="50" height="50">
                        @else
                            <img src="{{asset('uploads/'.$new->image)}}" alt="Image article" width="50" height="50">
                        @endif
                        <div class="card-body text-justify">
                            <p class="card-text">
                                {{substr($new->description, 0, 200)}}...
                            </p>
                        </div>
                        <a href="{{route('single_article', $new->id)}}" style="width: 150px;font-weight: bold;" class="btn btn-dark text-justify">LIRE LA SUITE...</a>
                    </div>
                </div>
            @endforeach
        @else
            <h4>Aucune information disponible...</h4>
        @endif
    </div>
    @if(!empty($news))
        <div class="row justify-content-center mx-auto mb-2">
            <b>{{$news->links()}}</b>
        </div>
    @endif
@endsection
