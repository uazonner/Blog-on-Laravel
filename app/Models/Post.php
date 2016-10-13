<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\User;

class Post extends Model
{
    protected $table = 'posts';
    protected $fillable = ['title', 'alias', 'body', 'body_preview', 'author_id', 'published'];

    public function User() {
        return $this->belongsTo(User::class);
    }
}
