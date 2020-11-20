<?php

namespace App\Http\Controllers;

use App\Model\Article;
use App\Model\Commentaire;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        $news = Article::orderBy('created_at', 'DESC')->paginate(9);
        return view('home', compact('news'));
    }

    public function single($id_article)
    {
        $new = Article::find($id_article);
        $comments = Commentaire::where('article_id', $id_article)->get();
        // dd($comments);
        return view('single', compact('new', 'comments'));
    }

    public function add_cmt()
    {
        //dd(request()->all());
        $article_id = request('article_id');
        $comment = request('txt_cmt');
        $cmt = Commentaire::create([
            'article_id' => $article_id,
            'description' => $comment
        ]);
        if(!empty($cmt)){
           return response()->json(["success" => true]);
        }else{
           return response()->json(["success" => false]);
        }

    }
}
