<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>BrainStorm blog</title>

    <!-- Styles -->
    <link href="{!! asset('css/preload.css') !!}" rel="stylesheet">
    <link href="{!! asset('css/vendors.css') !!}" rel="stylesheet">
    <link href="{!! asset('css/syntaxhighlighter/shCore.css') !!}" rel="stylesheet">
    <link href="{!! asset('css/color.css') !!}" rel="stylesheet">
    <link href="{!! asset('css/width-full.css') !!}" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">

    <!-- Scripts -->
    <script>
        window.Laravel = <?php echo json_encode([
                'csrfToken' => csrf_token(),
        ]); ?>
    </script>
</head>
<div id="preloader">
    <div id="status">&nbsp;</div>
</div>

<body>
<div id="sb-site">
<div class="boxed">
    <header id="header-full-top" class="hidden-xs header-full-dark">
        <div class="container">
            <div class="header-full-title">
                <h1 class="animated fadeInRight"><a href="#">Brain <span>Storm</span></a></h1>
                <p class="animated fadeInRight">Alex_K personal blog</p>
            </div>
            <nav class="top-nav">
                <ul class="top-nav-social hidden-sm">
                    <li><a href="#" class="animated fadeIn animation-delay-6 rss"><i class="fa fa-rss"></i></a></li>
                    <li><a href="#" class="animated fadeIn animation-delay-7 twitter"><i class="fa fa-twitter"></i></a></li>
                    <li><a href="#" class="animated fadeIn animation-delay-8 facebook"><i class="fa fa-facebook"></i></a></li>
                    <li><a href="#" class="animated fadeIn animation-delay-9 google-plus"><i class="fa fa-google-plus"></i></a></li>
                    <li><a href="#" class="animated fadeIn animation-delay-9 instagram"><i class="fa fa-instagram"></i></a></li>
                    <li><a href="#" class="animated fadeIn animation-delay-8 vine"><i class="fa fa-vine"></i></a></li>
                    <li><a href="#" class="animated fadeIn animation-delay-7 linkedin"><i class="fa fa-linkedin"></i></a></li>
                    <li><a href="#" class="animated fadeIn animation-delay-6 flickr"><i class="fa fa-flickr"></i></a></li>
                </ul>

                <div class="dropdown animated fadeInDown animation-delay-11">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Авторизация</a>
                    <div class="dropdown-menu dropdown-menu-right dropdown-login-box animated flipCenter">
                        <form role="form">
                            <h4>Форма входа</h4>

                            <div class="form-group">
                                <div class="input-group login-input">
                                    <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                    <input type="text" class="form-control" placeholder="Имя пользователя">
                                </div>
                                <br>
                                <div class="input-group login-input">
                                    <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                                    <input type="password" class="form-control" placeholder="Пароль">
                                </div>
                                <div class="checkbox pull-left">
                                    <input type="checkbox" id="checkbox_remember1">
                                    <label for="checkbox_remember1">
                                        Запомнить меня
                                    </label>
                                </div>
                                <button type="submit" class="btn btn-ar btn-primary pull-right">Войти</button>
                                <div class="clearfix"></div>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="dropdown animated fadeInDown animation-delay-13">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-search"></i></a>
                    <div class="dropdown-menu dropdown-menu-right dropdown-search-box animated fadeInUp">
                        <form role="form">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Любая фраза...">
                                <span class="input-group-btn">
                                <button class="btn btn-ar btn-primary" type="button">Найти!</button>
                            </span>
                            </div>
                        </form>
                    </div>
                </div>
            </nav>
        </div>
    </header>

    <nav class="navbar navbar-default navbar-header-full navbar-dark yamm navbar-static-top" role="navigation" id="header">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <i class="fa fa-bars"></i>
                </button>
                <a id="ar-brand" class="navbar-brand hidden-lg hidden-md hidden-sm navbar-dark" href="#">Brain <span>Storm</span></a>
            </div> <!-- navbar-header -->

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="pull-right">
                <a href="javascript:void(0);" class="sb-icon-navbar sb-toggle-right"><i class="fa fa-bars"></i></a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="primaryMenu">
                        <a href="#" class="primaryMenu-toggle">Главная <i class="fa fa-angle-down" aria-hidden="true"></i></a>
                    </li>
                    <li class="primaryMenu">
                        <a href="#" class="primaryMenu-toggle">Записи <i class="fa fa-angle-down" aria-hidden="true"></i></a>
                    </li>
                    <li class="primaryMenu">
                        <a href="#" class="primaryMenu-toggle">Сервисы <i class="fa fa-angle-down" aria-hidden="true"></i></a>
                    </li>
                    <li class="primaryMenu">
                        <a href="#" class="primaryMenu-toggle">Комментарии <i class="fa fa-angle-down" aria-hidden="true"></i></a>
                    </li>
                    <li class="primaryMenu">
                        <a href="#" class="primaryMenu-toggle">Архив <i class="fa fa-angle-down" aria-hidden="true"></i></a>
                    </li>
                    <li class="primaryMenu">
                        <a href="#" class="primaryMenu-toggle">О блоге <i class="fa fa-angle-down" aria-hidden="true"></i></a>
                    </li>
                    <li class="primaryMenu">
                        <a href="#" class="primaryMenu-toggle">Контакты <i class="fa fa-angle-down" aria-hidden="true"></i></a>
                    </li>
                    <li class="primaryMenu">
                        <a href="#" class="primaryMenu-toggle">Резюме <i class="fa fa-angle-down" aria-hidden="true"></i></a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <header class="main-header">
        <div class="container">
            <h1 class="page-title">Главная страница</h1>

            <ol class="breadcrumb pull-right">
                <li><a href="#">Блог</a></li>
                <li class="active">Главная страница</li>
            </ol>
        </div>
    </header>
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <article class="post animated fadeInLeft animation-delay-8">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <h3 class="post-title"><a href="#" class="transicion">Lorem ipsum Minim Ut in nulla labore sint nostrud</a></h3>
                            <div class="row">
                                <div class="col-lg-6">
                                    <img src="http://placehold.it/350x200" class="img-post img-responsive" alt="Image">
                                </div>
                                <div class="col-lg-6 post-content">
                                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>

                                    <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt voluptas sit aspernatur.</p>
                                </div>
                            </div>
                        </div>
                        <div class="panel-footer post-info-b">
                            <div class="row">
                                <div class="col-lg-10 col-md-9 col-sm-8">
                                    <i class="fa fa-clock-o"></i> Oct 13, 2016 <i class="fa fa-user"></i> <a href="#">Alex_K</a> <i class="fa fa-folder-open"></i> <a href="#">PHP</a>, <a href="#">Mysql</a>.
                                </div>
                                <div class="col-lg-2 col-md-3 col-sm-4">
                                    <a href="#" class="pull-right">Подробнее &raquo;</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </article> <!-- post -->
            </div> <!-- col-md-8 -->

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
        </div> <!-- row -->
    </div> <!-- container  -->

    <aside id="footer-widgets">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <h3 class="footer-widget-title">Карта сайта</h3>
                    <ul class="list-unstyled three_cols">
                        <li><a href="#">Главная</a></li>
                        <li><a href="#">Записи</a></li>
                        <li><a href="#">Сервисы</a></li>
                        <li><a href="#">Комментарии</a></li>
                        <li><a href="#">Архив</a></li>
                        <li><a href="#">О блоге</a></li>
                        <li><a href="#">Контакты</a></li>
                        <li><a href="#">Резюме</a></li>
                    </ul>
                    <h3 class="footer-widget-title">Подписка на рассылку</h3>
                    <p>В рассылке я анонсирую новые посты блога, а также делюсь интересными ссылками и анонсами, которые не попадают в блог.</p>
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Email Adress">
                        <span class="input-group-btn">
                        <button class="btn btn-ar btn-primary" type="button">Подписаться</button>
                    </span>
                    </div><!-- /input-group -->
                </div>
                <div class="col-md-4">
                    <div class="footer-widget">
                        <h3 class="footer-widget-title">Recent Post</h3>
                        <div class="media">
                            <a class="pull-left" href="#"><img class="media-object" src="http://placehold.it/100" width="75" height="75" alt="image"></a>
                            <div class="media-body">
                                <h4 class="media-heading"><a href="#">Lorem ipsum Duis quis occaecat minim lorem ipsum tempor officia labor</a></h4>
                                <small>August 18, 2013</small>
                            </div>
                        </div>
                        <div class="media">
                            <a class="pull-left" href="#"><img class="media-object" src="http://placehold.it/100" width="75" height="75" alt="image"></a>
                            <div class="media-body">
                                <h4 class="media-heading"><a href="#">Lorem ipsum dolor excepteur sunt in lorem ipsum cillum tempor</a></h4>
                                <small>September 14, 2013</small>
                            </div>
                        </div>
                        <div class="media">
                            <a class="pull-left" href="#"><img class="media-object" src="http://placehold.it/100" width="75" height="75" alt="image"></a>
                            <div class="media-body">
                                <h4 class="media-heading"><a href="#">Lorem ipsum Dolor cupidatat minim adipisicing et fugiat</a></h4>
                                <small>October 9, 2013</small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="footer-widget">
                        <h3 class="footer-widget-title">Лучшие сервисы</h3>
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-3 col-xs-6">
                                <a href="#" class="thumbnail"><img src="http://placehold.it/150x100" class="img-responsive" alt="Image"></a>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-3 col-xs-6">
                                <a href="#" class="thumbnail"><img src="http://placehold.it/150x100" class="img-responsive" alt="Image"></a>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-3 col-xs-6">
                                <a href="#" class="thumbnail"><img src="http://placehold.it/150x100" class="img-responsive" alt="Image"></a>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-3 col-xs-6">
                                <a href="#" class="thumbnail"><img src="http://placehold.it/150x100" class="img-responsive" alt="Image"></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div> <!-- row -->
        </div> <!-- container -->
    </aside> <!-- footer-widgets -->
    <footer id="footer">
        <p>&copy; <?php echo date('Y'); ?> <a href="#">Alex_K BrainStorm Blog</a>, All rights reserved.</p>
    </footer>

</div>
</div>

<div id="back-top">
    <a href="#"><i class="fa fa-chevron-up"></i></a>
</div>

<!-- Scripts -->
<script src="{!! asset('js/vendors.js') !!}"></script>

<!-- Syntaxhighlighter -->
<script src="{!! asset('js/syntaxhighlighter/shCore.js') !!}"></script>
<script src="{!! asset('js/syntaxhighlighter/shBrushXml.js') !!}"></script>
<script src="{!! asset('js/syntaxhighlighter/shBrushJScript.js') !!}"></script>

<script src="{!! asset('js/DropdownHover.js') !!}"></script>
<script src="{!! asset('js/app.js') !!}"></script>
<script src="{!! asset('js/holder.js') !!}"></script>
</body>
</html>