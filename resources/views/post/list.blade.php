@extends('layouts.app')

@section('title')
    <title>BrainStorm posts</title>
@stop

@section('content')
     <div class="col-md-8">
        @foreach($posts as $post)
        <article class="post animated fadeInLeft animation-delay-8">
            <div class="panel panel-default">
                <div class="panel-body">
                    <h3 class="post-title"><a href="{{ url('/post', $post->id) }}" class="transicion">{{ $post->title }}</a></h3>
                    <div class="row">
                        <div class="col-lg-6">
                            <img src="http://placehold.it/350x200" class="img-post img-responsive" alt="Image">
                        </div>
                        <div class="col-lg-6 post-content">
                            {{ $post->body_preview }}
                        </div>
                    </div>
                </div>
                <div class="panel-footer post-info-b">
                    <div class="row">
                        <div class="col-lg-10 col-md-9 col-sm-8">
                            <i class="fa fa-clock-o"></i> {{ $post->created_at }} <i class="fa fa-user"></i> <a href="#">{{$post->user->name}}</a> <i class="fa fa-folder-open"></i> <a href="#">PHP</a>, <a href="#">Mysql</a>.
                        </div>
                        <div class="col-lg-2 col-md-3 col-sm-4">
                            <a href="{{ url('/post', $post->id) }}" class="pull-right">Подробнее &raquo;</a>
                        </div>
                    </div>
                </div>
            </div>
        </article>
        @endforeach

        {{ $posts->links('pagination.app') }}
    </div>
@endsection