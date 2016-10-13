<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;

class PostController extends Controller
{
    public function index(Post $post) {
        $data = $post->paginate(7);
        return view('home', ['posts' => $data]);
    }
}
