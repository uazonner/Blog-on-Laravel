<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
//use App\Http\Requests;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;

class MainController extends Controller
{

    use AuthenticatesUsers;

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
