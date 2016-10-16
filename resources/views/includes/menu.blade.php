<nav class="navbar navbar-default navbar-header-full navbar-dark yamm navbar-static-top" role="navigation" id="header">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Mobile navigation</span>
                <i class="fa fa-bars"></i>
            </button>
            <a id="ar-brand" class="navbar-brand hidden-lg hidden-md hidden-sm navbar-dark" href="#">Brain <span>Storm</span></a>
        </div>

        <div class="pull-right">
            <a href="#" class="sb-icon-navbar sb-toggle-right"><i class="fa fa-bars"></i></a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
            @foreach($menu_item as $menu )
                <li class="primaryMenu">
                    <a href="{{ $menu->url }}" title="{{ $menu->title }}" @if(isset($menu->target)) target="{{ $menu->target }}" @endif class="primaryMenu-toggle">{{ $menu->name }} <i class="fa fa-angle-down" aria-hidden="true"></i></a>
                </li>
            @endforeach
            </ul>
        </div>
    </div>
</nav>
