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
            <div class="clearfix"></div>
            <hr class="dotted">
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
                            {{ Form::checkbox('active', false, false) }}
                            {{ Form::label('active', 'Активный') }}
                        </div>
                        <div class="checkbox">
                            {{ Form::checkbox('admin', false, false) }}
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