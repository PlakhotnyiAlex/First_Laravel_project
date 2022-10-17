@extends('layouts.main')
@section('content')
    <div>
        <form action="{{route('post.store')}}" method="post">
            @csrf
            <div class="mb-3">
                <label for="title" class="form-label">Title</label>
                <input value="{{old('title')}}" type="text" name="title" class="form-control" id="title" placeholder="Enter the title of your post">
                @error('title')
                <p class="text-danger">{{ $message }}</p>
                @enderror
            </div>
            <div class="mb-3">
                <label for="content" class="form-label">Content</label>
                <textarea class="form-control" name="content" id="content" placeholder="Enter the body of your post">{{old('content')}}</textarea>
                @error('content')
                <p class="text-danger">{{ $message }}</p>
                @enderror
            </div>
            <div class="mb-3">
                <label for="image" class="form-label">Image</label>
                <input value="{{old('image')}}" type="text" name="image" class="form-control" id="image" placeholder="Upload image">
            </div>
            <select class="form-select" aria-label="Default select example" name="category_id">
                <option selected>Chose a category</option>
                @foreach($categories as $category)
                    <option value="{{ $category->id }}" @selected(old('category_id') == $category->id)>{{ $category->title }}</option>
                @endforeach

            </select>
            <select class="form-select my-3" multiple aria-label="multiple select example" name="tags[]">
                @foreach($tags as $tag)
                    <option value="{{ $tag->id }}" @selected(old('tags[]') == $tag->id)>{{ $tag->title }}</option>
                @endforeach
            </select>

            <button type="submit" class="btn btn-primary mt-3">Submit</button>
        </form>

    </div>
@endsection

