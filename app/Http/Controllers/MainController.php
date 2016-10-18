<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
//use App\Http\Requests;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use App\Models\Post;

class MainController extends Controller
{

    use AuthenticatesUsers;

    public function index() {
        $postData = Post::where('published', '=', '1')->paginate(5);
        return view('post.list', ['posts' => $postData]);
    }

    public function simplelogin(Request $req)
    {
        $email = $req->get('data_email');
        $password = $req->get('data_password');

        if ( Auth::attempt(['email' => $email, 'password' => $password]) ) {
                return 'success';
        }
        return null;
    }
}
