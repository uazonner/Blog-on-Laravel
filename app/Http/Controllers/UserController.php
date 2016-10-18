<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Validator;
use App\Http\Requests;
use App\User;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $usersData = User::all();
        return view('user.list', ['users' => $usersData]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
/*    public function validator($dataUser)
    {
        return Validator::make($dataUser, [
            'username' => 'required|max:255',
            'email' => 'required|email|max:255|unique:users',
            'password' => 'required|min:6|confirmed',
        ]);
    }*/

    public function create()
    {
        return view('user.create');
    }



    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(User $user, Request $request)
    {

        $validator = $this->validate($request, [
            'name' => 'required|unique:users|min:3|max:75|alpha_dash',
            'email' => 'required|unique:users|max:150|email',
            'password' => 'required|confirmed|max:255',
            'remember_token' => 'string|alpha_dash',
        ]);

        if ($validator) {
            return redirect()->back()->withErrors($validator);
        }

        $user = new User;

        $user->name = ($request->name);
        $user->email = ($request->email);
        $user->password = (bcrypt($request->password));
        $user->remember_token = ($request->_token);
        $user->active = ($request->active);
        $user->admin = ($request->admin);

        $user->save();

        return redirect()->back()->with('succes', 'Пользователь успешно добавлен');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $user = User::find($id);
        return view('user.edit', ['user' => $user]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $user = User::find($id);
        $validator = $this->validate($request, [
            'password' => 'confirmed|max:255',
            'remember_token' => 'string|alpha_dash',
        ]);

        if ($user->name != $request->name) {
            $validator = $this->validate($request, [
                'name' => 'required|unique:users|min:3|max:75|alpha_dash',
            ]);

            $user->name = ($request->name);
        }

        if ($user->email != $request->email) {
            $validator = $this->validate($request, [
                'email' => 'required|unique:users|max:150|email',
            ]);

            $user->email = ($request->email);
        }

        if ($validator) {
            return redirect()->back()->withErrors($validator);
        }

        $user->password = (bcrypt($request->password));
        $user->remember_token = ($request->_token);
        $user->active = ($request->active);
        $user->admin = ($request->admin);

        $user->save();


        return redirect()->back()->with('succes', 'Данные успешно обновлены');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
/*        User::find($id)->delete;

        return redirect()->back();*/
    }
}
