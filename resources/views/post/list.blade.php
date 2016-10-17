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
@stop

@section('asside')
    <div class="col-md-4">
        <aside class="sidebar">
            <div class="block animated fadeInDown animation-delay-12">
                <div class="input-group">
                    <input type="text" placeholder="Поиск..." class="form-control">
                    <span class="input-group-btn">
                        <button class="btn btn-ar btn-primary" type="button"><i class="fa fa-search no-margin-right"></i></button>
                      </span>
                </div><!-- /input-group -->
            </div>

            <div class="block animated fadeInDown animation-delay-10">
                <ul class="nav nav-tabs nav-tabs-ar" id="myTab2">
                    <li class="active"><a href="#fav" data-toggle="tab"><i class="fa fa-star"></i></a></li>
                    <li><a href="#categories" data-toggle="tab"><i class="fa fa-folder-open"></i></a></li>
                    <li><a href="#archive" data-toggle="tab"><i class="fa fa-clock-o"></i></a></li>
                    <li><a href="#tags" data-toggle="tab"><i class="fa fa-tags"></i></a></li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="fav">
                        <h3 class="post-title no-margin-top">Популярные записи</h3>
                        <ul class="media-list">
                            <li class="media">
                                <a class="pull-left" href="#"><img class="media-object" src="http://placehold.it/150x150" width="80" height="80" alt="image"></a>
                                <div class="media-body">
                                    <p class="media-heading"><a href="#">Lorem ipsum dolor sit amet aut consectetur adipisicing elitl libero</a></p>
                                    <small>Sep, 28 2013</small>
                                </div>
                            </li>
                            <li class="media">
                                <a class="pull-left" href="#"><img class="media-object" src="http://placehold.it/150x150" width="80" height="80" alt="image"></a>
                                <div class="media-body">
                                    <p class="media-heading"><a href="#">Lorem ipsum dolor sit amet in consectetur adipisicing</a></p>
                                    <small>Oct, 9 2013</small>
                                </div>
                            </li>
                            <li class="media">
                                <a class="pull-left" href="#"><img class="media-object" src="http://placehold.it/150x150" width="80" height="80" alt="image"></a>
                                <div class="media-body">
                                    <p class="media-heading"><a href="#">Sit amet consectetur adipisicing elit incidunt minus</a></p>
                                    <small>Dec, 30 2013</small>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="tab-pane" id="archive">
                        <h3 class="post-title no-margin-top">Архив</h3>
                        <ul class="simple">
                            <li><a href="#">December 2012</a></li>
                            <li><a href="#">January 2013</a></li>
                        </ul>
                    </div>
                    <div class="tab-pane" id="categories">
                        <h3 class="post-title no-margin-top">Категории</h3>
                        <ul class="simple">
                            <li><a href="#">Game Programming</a></li>
                            <li><a href="#">Artificial Intelligence</a>
                                <ul>
                                    <li><a href="#">Artificial Life</a></li>
                                    <li><a href="#">Neural Networks</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Resources</a></li>
                            <li><a href="#">Web Developer</a></li>
                        </ul>
                    </div>

                    <div class="tab-pane" id="tags">
                        <h3 class="post-title">Тэги</h3>
                        <div class="tags-cloud">
                            <a href="#" class="tag">Web</a>
                            <a href="#" class="tag">Artificial Intelligence</a>
                        </div>
                    </div>
                </div> <!-- tab-content -->
            </div>
        </aside> <!-- Sidebar -->
    </div>
@endsection