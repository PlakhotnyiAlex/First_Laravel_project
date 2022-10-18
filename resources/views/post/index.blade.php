@extends('layouts.main')
@section('content')
    <div>
        <div>
            <a href="{{ route('post.create') }}" class="btn btn-primary mb-3">Add new post</a>
        </div>
        <ul class="list-group">
            @foreach($posts as $post)
                <li class="list-group-item"><a href="{{ route('post.show', $post->id) }}">{{$post->id}} . {{$post->title}}</a></li>
            @endforeach
        </ul>

        <div class="my-3">
            {{ $posts->links() }}
        </div>

    </div>
@endsection

