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

/* Home controller */

Route::get('/', ['as' => 'home', 'uses' => 'MainController@index']);

/* Posts controller */

Route::get('/post/{id}', 'PostController@post');
Route::post('/post/like', 'PostController@like');

/* Users Auth controllers and methods */

Auth::routes();
Route::get('/home', 'AuthController@index');
Route::post('/simplelogin', 'MainController@simplelogin');

/* Administration intarface and CRUD controllers */

Route::get('admin', ['as' => 'admin::main', 'uses' => 'AdminController@index', 'middleware' => ['auth', 'admin']]);

Route::group(['as' => 'admin::', 'prefix' => 'admin', 'middleware' => ['auth', 'admin']], function () {
    Route::resource('users', 'UserController');
});


