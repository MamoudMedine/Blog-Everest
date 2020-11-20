<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Commentaire extends Model
{
    protected $guarded = [];

    public function article()
    {
        $this->belongsTo('App\Model\Article');
    }
}
