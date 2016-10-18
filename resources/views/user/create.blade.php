@extends('layouts.app')

@section('title')
    <title>BrainStorm posts</title>
@stop

@section('header')
    <header class="main-header">
        <div class="container">
            {!! Breadcrumbs::render('admin.users.create') !!}
        </div>
    </header>
@stop

@section('content')
    <div class="col-md-12">
        <section>
            <h2 class="page-header no-margin-top">Добавить нового пользователя</h2>
            <div class="pull-right">
                <a href="{{ url('admin/users/create') }}" class="btn btn-ar btn-default">
                    <i class="fa fa-plus-square" aria-hidden="true"></i> Добавить пользователя
                </a>
            </div>
            <div class="clearfix"></div>
            <hr class="dotted">
            @if (Session::has('succes'))
                <div class="alert alert-success">
                        {!! Session::get('succes') !!}
                </div>
            @endif


            @if (count($errors) > 0)
                <div class="alert alert-danger">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <ul>
                    @foreach($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                    </ul>
                </div>
            @endif

            <div class="panel panel-default">
                <div class="panel-body">
                    {!! Form::open(['route' => 'admin::users.store']) !!}
                        <div class="form-group">
                            {{ Form::label('name', 'Имя пользователя') }}
                            {{ Form::text('name', null, ['class' => 'form-control']) }}
                        </div>
                        <div class="form-group">
                            {{ Form::label('email', 'Email адрес') }}
                            {{ Form::email('email', null, ['class' => 'form-control']) }}
                        </div>
                        <div class="form-group">
                            {{ Form::label('password', 'Пароль') }}
                            {{ Form::password('password', ['class' => 'form-control']) }}
                        </div>
                        <div class="form-group">
                        {{ Form::label('password_confirmation', 'Повторите пароль') }}
                        {{ Form::password('password_confirmation', ['class' => 'form-control']) }}
                        </div>
                        <div class="checkbox">
                            {{ Form::hidden('active', '0') }}
                            {{ Form::checkbox('active', '1', true, ['id' => 'active']) }}
                            {{ Form::label('active', 'Активный') }}
                        </div>
                        <div class="checkbox">
                            {{ Form::hidden('admin', '0') }}
                            {{ Form::checkbox('admin', '1', false, ['id' => 'admin']) }}
                            {{ Form::label('admin', 'Администратор') }}
                        </div>
                        {{ Form::submit('Сохранить', ['class' => 'btn btn-ar btn-primary']) }}
                    {!! Form::close() !!}
                </div>
            </div>
        </section>
    </div>
@stop

@section('asside')
@endsection