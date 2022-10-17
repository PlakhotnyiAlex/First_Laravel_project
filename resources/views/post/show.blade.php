@extends('layouts.main')
@section('content')
    <div>
        <div>{{ $post->id }}. {{ $post->title }}</div>
        <div>{{ $post->content }}</div>
        <div>{{ $post->category->title }}</div>
        <div>
            <a href="{{ route('post.edit',$post->id) }}">Edit</a>
        </div>

        <div>
            <form action="{{ route('post.delete',$post->id) }}" method="post">
                @csrf
                @method('delete')
                <input type="submit" value="Delete" class="btn btn-danger my-3">
            </form>
        </div>
        <div>
            <a href="{{ route('post.index') }}">Back</a>
        </div>
    </div>
@endsection

