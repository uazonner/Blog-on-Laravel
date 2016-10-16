<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{
    protected $table = 'menu_items';
    protected $fillable = ['name', 'url', 'pos', 'title', 'target'];
    public $timestamps = false;

}
