<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
use App\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class PostController extends Controller
{
    public function index() {
        $postData = Post::where('published', '=', '1')->paginate(5);

        return view('post.list', ['posts' => $postData]);
    }

    public function post($id) {
        $postData = Post::find($id);
        return view('post.detail', ['post' => $postData]);
    }

    public function like(Request $req) {
        $postId = $req->get('post_id');
        $post = Post::find($postId);
        $rating = $post->likes;
        $userLike = DB::table('user_post_like')->where(['user_id' => Auth::user()->id, 'post_id' => $postId])->first();
        if ($userLike == null) {
            $post->likes = $rating + 1;
            DB::table('user_post_like')->insert([
                'user_id' => Auth::user()->id,
                'post_id' => $postId
            ]);
        } else {
            $post->likes = $rating -1;
            $userLike->delete();
        }
        $post->save;
        return json_encode(['likes' => $post->likes, 'user' => $userLike]);
    }
}
