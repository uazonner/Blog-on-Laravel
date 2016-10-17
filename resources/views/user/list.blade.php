@extends('layouts.app')

@section('title')
    <title>BrainStorm posts</title>
@stop

@section('content')
    <div class="col-md-12">
        <section>
            <div class="pull-right">
                <a href="{{ url('admin/users/create') }}" class="btn btn-ar btn-default">
                    <i class="fa fa-plus-square" aria-hidden="true"></i> Добавить пользователя
                </a>
            </div>
            <table class="table">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Имя пользователя</th>
                    <th>Email адрес</th>
                    <th>Активный</th>
                    <th>Дата регистрации</th>
                    <th>Действия</th>
                </tr>
                </thead>
                <tbody>
                @foreach( $users as $user )
                 <tr>
                    <td>{{ $user->id }}</td>
                    <td>{{ $user->name }}</td>
                    <td>{{ $user->email }}</td>
                    <td>{{ $user->active }}</td>
                    <td>{{ $user->created_at }}</td>
                    <td>
                        <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                        <i class="fa fa-minus-square" aria-hidden="true"></i>
                    </td>
                 </tr>
                @endforeach
                </tbody>
            </table>
        </section>
    </div>
@stop

@section('asside')
@endsection