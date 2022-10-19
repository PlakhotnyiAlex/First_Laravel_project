@extends('layouts.admin')
@section('content')
    <div>
        <div>{{ $post->id }}. {{ $post->title }}</div>
        <div>{{ $post->content }}</div>
        <div>{{ $post->category->title }}</div>
        <div>
            <a href="{{ route('admin.post.edit',$post->id) }}">Edit</a>
        </div>

        <div>
            <form action="{{ route('admin.post.delete',$post->id) }}" method="post">
                @csrf
                @method('delete')
                <input type="submit" value="Delete" class="btn btn-danger my-3">
            </form>
        </div>
        <div>
            <a href="{{ route('admin.post.index') }}">Back</a>
        </div>
    </div>
@endsection

