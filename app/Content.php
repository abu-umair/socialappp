<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Content extends Model
{
    // use SoftDeletes;

    protected $fillable = [
        'url','title_banner','title','isi'
    ];

    protected $hidden =[

    ];
}
