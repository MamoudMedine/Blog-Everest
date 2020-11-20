<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    protected $guarded = [];

    public function commentaires()
    {
        $this->hasMany('App\Model\Commentaire');
    }
}
