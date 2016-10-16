<?php

namespace App\Http\Controllers;

use App\Models\Menu;
use Illuminate\Http\Request;

use App\Http\Requests;

class MenuController extends Controller
{
    public static function showMenu() {
        return Menu::all();
    }
}
