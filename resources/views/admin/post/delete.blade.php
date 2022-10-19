@extends('layouts.admin')
@section('content')
    <div>
        @foreach($posts as $post)
            <div>{{$post->title}}</div>
        @endforeach
    </div>
@endsection

