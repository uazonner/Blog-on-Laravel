<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\User;

class Post extends Model
{
    protected $table = 'posts';
    protected $fillable = ['title', 'alias', 'body', 'body_preview', 'published'];

    public function user() {
        return $this->belongsTo(User::class, 'author_id');
    }
}
