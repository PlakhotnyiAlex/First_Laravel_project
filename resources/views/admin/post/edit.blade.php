@extends('layouts.admin')
@section('content')
    <div>
        <form action="{{route('admin.post.update', $post->id)}}" method="post">
            @csrf
            @method('patch')
            <div class="mb-3">
                <label for="title" class="form-label">Title</label>
                <input type="text" name="title" class="form-control" id="title" placeholder="Enter the title of your post" value="{{$post->title}}">
            </div>
            <div class="mb-3">
                <label for="content" class="form-label">Content</label>
                <textarea class="form-control" name="content" id="content" placeholder="Enter the body of your post">{{$post->content}}</textarea>
            </div>
            <div class="mb-3">
                <label for="image" class="form-label">Image</label>
                <input type="text" name="image" class="form-control" id="image" placeholder="Upload image"value="{{$post->image}}">
            </div>
            <div class="mb-3">
                <p>Chose a category:</p>
                 <select class="form-select" aria-label="Default select example" name="category_id">
                    @foreach($categories as $category)
                        <option

                        value="{{ $category->id }}" @selected($category->id === $post->category->id)>{{ $category->title }}</option>
                    @endforeach
                 </select>
            </div>
            <div class="mb-3">
                <p>Chose tags:</p>
                <select class="form-select my-3" multiple aria-label="multiple select example" name="tags[]">
                @foreach($tags as $tag)
                    <option value="{{ $tag->id }}"
                        @foreach($post->tags as $postTag)
                            @selected($tag->id === $postTag->id)
                        @endforeach>{{ $tag->title }}</option>
                @endforeach
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Update</button>
        </form>

    </div>
@endsection

