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

Auth::routes();
Route::get('/home', 'AuthController@index');
Route::post('/simplelogin', 'MainController@simplelogin');

Route::get('/', ['as' => 'home', 'uses' => 'PostController@index']);
Route::get('/post/{id}', 'PostController@post');
Route::post('/post/like', 'PostController@like');



// administration links
Route::get('/admin', ['uses' => 'AdminController@index', 'middleware' => ['auth', 'admin']]); // Main admin page

//Route::get('/admin/users', ['uses' => 'AdminController@users', 'middleware' => ['auth', 'admin']]); // Users admin page
//Route::get('/admin/users/add', ['uses' => 'AdminController@usersAddGet', 'middleware' => ['auth', 'admin']]); // Users add page
//Route::post('/admin/user', ['uses' => 'AdminController@usersAddPost', 'middleware' => ['auth', 'admin']]); // Users add page
/*Route::resource('user', 'UserController');*/

Route::group(['as' => 'admin::', 'prefix' => 'admin', 'middleware' => ['auth', 'admin']], function () {
    Route::resource('users', 'UserController');
});