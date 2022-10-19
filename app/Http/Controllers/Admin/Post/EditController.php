<?php

namespace App\Http\Controllers\Admin\Post;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Post;
use App\Models\Tag;

class EditController extends Controller
{
    public function __invoke(Post $post)
    {
        $categories = Category::all();
        $tags = Tag::all();
        $postsCount = Post::all()->count();
        return view('admin.post.edit', compact('post', 'categories', 'tags', 'postsCount'));
    }
}