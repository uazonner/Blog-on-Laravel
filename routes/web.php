<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/


Route::get('/home', 'AuthController@index');

Route::get('/', 'PostController@index');
Route::get('/post/{id}', 'PostController@post');

Auth::routes();


Route::post('/post/like', 'PostController@like');
Route::post('/simplelogin', 'MainController@simplelogin');
