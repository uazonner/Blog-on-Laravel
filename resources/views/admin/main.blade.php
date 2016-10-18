@extends('layouts.app')

@section('title')
    <title>BrainStorm posts</title>
@stop

@section('header')
    <header class="main-header">
        <div class="container">
            {!! Breadcrumbs::render('admin') !!}
        </div>
    </header>
@stop

@section('content')
    <div class="col-md-12">
        <section>
            <h2 class="page-header no-margin-top">Администрирование</h2>
            <div class="row">
                <div class="col-md-3">
                    <div class="content-box box-default">
                        <span class="icon-ar icon-ar-lg icon-ar-inverse icon-ar-circle">
                            <i class="fa fa-user" aria-hidden="true"></i>
                        </span>
                        <h4 class="content-box-title"><a href="{{ url('admin/users') }}">Пользователи</a></h4>
                        <p>Управление пользователями: создание, редактирование и удаление.</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="content-box box-default">
                        <span class="icon-ar icon-ar-lg icon-ar-inverse icon-ar-circle">
                            <i class="fa fa-bars" aria-hidden="true"></i>
                        </span>
                        <h4 class="content-box-title"><a href="{{ url('admin/menu') }}">Меню</a></h4>
                        <p>Управление пользователями: создание, редактирование и удаление.</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="content-box box-default">
                        <span class="icon-ar icon-ar-lg icon-ar-inverse icon-ar-circle">
                            <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                        </span>
                        <h4 class="content-box-title"><a href="{{ url('admin/post') }}">Записи блога</a></h4>
                        <p>Управление пользователями: создание, редактирование и удаление.</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="content-box box-default">
                        <span class="icon-ar icon-ar-lg icon-ar-inverse icon-ar-circle">
                            <i class="fa fa-tag" aria-hidden="true"></i>
                        </span>
                        <h4 class="content-box-title"><a href="{{ url('admin/category') }}">Категории</a></h4>
                        <p>Управление пользователями: создание, редактирование и удаление.</p>
                    </div>
                </div>
            </div>
        </section>
    </div>
@stop

@section('asside')
@endsection