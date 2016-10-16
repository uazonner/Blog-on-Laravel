@extends('layouts.app')

@section('title')
    <title>Full page post</title>
@stop


@section('content')
<div class="col-md-8">
    <section>
        <h2 class="page-header no-margin-top">{{ $post->title }}</h2>
        <img src="http://placehold.it/800x450" class="img-responsive imageborder" alt="Image">
        {{ $post->body }}
    </section>
    <section>
        <div class="panel panel-default">
            <div class="panel-body">
                <div class="social">
                    <div class="row">
                        <div class="col-lg-9">
                            <i class="fa fa-clock-o"></i> {{ $post->created_at }} <i class="fa fa-user"></i> <a href="#">{{ $post->user->name }}</a> <i class="fa fa-folder-open"></i> <a href="#">PHP</a>, <a href="#">Mysql</a>.
                        </div>
                        <div class="col-lg-3">
                            <button id="{{ $post->id }}" class="btn btn-primary btn-sm like">
                                Like
                                <div class="badge">{{ $post->likes }}</div>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
@endsection