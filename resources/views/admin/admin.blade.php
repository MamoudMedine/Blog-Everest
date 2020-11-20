@extends('admin.layout.layout')

@section('contenu')
    <?php
    function format_date($dte)
    {
        $y = substr($dte, 0, 4);
        $m = substr($dte, 5, 2);
        $j = substr($dte, 8, 2);

        echo $j.'-'.$m.'-'.$y;
    }
    ?>
    <div class="row">
        <div class="mb-2">
            <button data-toggle="modal" data-target="#add_new_modal" data-backdrop="static"
                    data-keyboard="false" class="btn btn-primary">
                <b> <i class="fas fa-plus mr-1"></i> Nouvel article</b>
            </button>
        </div>
        <div class="table-responsive">
            <table class="table table-striped">
                @csrf
                <thead>
                <tr>
                    <th>Date</th>
                    <th>Titre</th>
                    <th>Image</th>
                    <th>Description</th>
                    <th>Commentaires</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody class="text-center">
                   @if(count($news) > 0)
                       @foreach($news as $new)
                           <tr class="new_{{$new->id}}">
                               <td>{{format_date($new->created_at)}}</td>
                               <td>{{$new->titre??''}}</td>
                               <td>
                                   @if(stristr($new->image, 'http'))
                                       <img src="{{$new->image??''}}" alt="Image article" width="50" height="50">
                                   @else
                                       <img src="{{asset('uploads/'.$new->image)}}" alt="Image article" width="50" height="50">
                                   @endif
                               </td>
                               <td>{{$new->description??''}}</td>
                               <td>
                                   <b style="color: red;">
                                       {{count(App\Model\Commentaire::where('article_id', $new->id)->get())}}
                                   </b>
                               </td>
                               <td>
                                   <a href="{{route('admin_single', $new->id)}}" class="btn m-1 btn-sm btn-success btn_new_detail">
                                       <i class="fas fa-eye"></i>
                                   </a>
                                   <button new_id="{{$new->id??''}}"  class="btn m-1 btn-sm btn-primary btn_edit_new">
                                       <i class="fas fa-edit"></i>
                                   </button>
                                   <button new_id="{{$new->id??''}}" del_url="{{route('del_new')}}" class="btn m-1 btn-sm btn-danger btn_del_new">
                                       <i class="fas fa-trash"></i>
                                   </button>
                               </td>
                           </tr>
                       @endforeach
                   @endif
                </tbody>
            </table>
        </div>
        <div class="text-center mx-auto">
            <b>{{$news->links()}}</b>
        </div>
    </div>
@endsection

