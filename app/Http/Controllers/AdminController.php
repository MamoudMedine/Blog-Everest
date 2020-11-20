<?php

namespace App\Http\Controllers;

use App\Model\Article;
use App\Model\Commentaire;
use App\Model\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class AdminController extends Controller
{
    public function login_view()
    {
        return view('admin.login');
    }

    public function login()
    {
        $email = request('email');
        $mdp =  request('mdp');
        $admin_home = route('admin_home');
        $log = User::where('email', $email)->first();

        if(Hash::check($mdp, $log->password)){
            session([
                'id_user' => $log->id,
                'nom_user' => $log->nom,
                'email_user' => $log->email
            ]);
            return response()->json(["success" => true, "admin_home"=>$admin_home]);
        }else{
            return response()->json(["success" => false]);
        }
    }

    public function logout()
    {
        session()->forget([
            'id_user',
            'nom_user',
            'email_user'
        ]);
        $login = route('login_view');
        return response()->json(["success" => true, "login"=>$login]);
    }
    public function admin_home()
    {
        $news = Article::orderBy('created_at', 'DESC')->paginate(10);
        return view('admin.admin', compact('news'));
    }

    public function single($id_article)
    {
        $new = Article::find($id_article);
        $comments = Commentaire::where('article_id', $id_article)->get();
        // dd($comments);
        return view('admin.single', compact('new', 'comments'));
    }

    public function add_new()
    {
        // dd(request()->all());
        $titre = request('titre');
        $image = request()->file('image');
        $description = request('description');
        $img_name = date('dmYHis').'.'.$image->getClientOriginalExtension();
        if($image->move(public_path('uploads'), $img_name)){
            $add = Article::create([
                'titre' => $titre,
                'image' => $img_name,
                'description' => $description
            ]);
            return response()->json(["success" => true]);
        } else{
            return response()->json(["success" => false]);
        }
    }

    public function edit_new()
    {
        $id = request('new_id');
        $titre = request('edit_titre');
        $image = request()->file('edit_image');
        $description = request('edit_description');
        if(!empty($image)){
            $img_name = date('dmYHis').'.'.$image->getClientOriginalExtension();
            if($image->move(public_path('uploads'), $img_name)){
                $edit = Article::where('id', $id)->update([
                    'titre' => $titre,
                    'image' => $img_name,
                    'description' => $description
                ]);
                return response()->json(["success" => true]);
            } else{
                return response()->json(["success" => false]);
            }
        } else {
            $edit = Article::where('id', $id)->update([
                'titre' => $titre,
                'description' => $description
            ]);
            if(!empty($edit)){
                return response()->json(["success" => true]);
            } else{
                return response()->json(["success" => false]);
            }
        }

    }

    public function del_new()
    {
        $id_new = request('id');
        $del = Article::where('id', $id_new)->delete();
        $cmt = Commentaire::where('article_id', $id_new)->get();

        if(!empty($del)){
            if($cmt){
                Commentaire::where('article_id', $id_new)->delete();
            }
            return response()->json(["success" => true]);
        } else{
            return response()->json(["success" => false]);
        }
    }
}
