<?php

namespace App\Http\Controllers;

use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Input;

use App\Http\Requests;
use Illuminate\Support\Facades\View;

class AdminController extends Controller
{
    public function index() {
        return view('admin.main');
    }
}
