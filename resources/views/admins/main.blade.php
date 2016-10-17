@extends('layouts.app')

@section('title')
    <title>BrainStorm posts</title>
@stop

@section('content')
    <div class="col-md-12">
        <section>
            <div class="panel panel-default">
                <div class="panel-heading">Administration dashboard</div>

                <div class="panel-body">
                    You are logged, in as {{ Auth::user()->name }}
                </div>
            </div>
        </section>
    </div>
@stop

@section('asside')
@endsection