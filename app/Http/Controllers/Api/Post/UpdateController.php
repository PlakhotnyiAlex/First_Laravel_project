<?php

namespace App\Http\Controllers\Api\Post;

use App\Http\Controllers\Api\Post\BaseController;
use App\Http\Requests\Post\UpdateRequest;
use App\Http\Resources\Post\PostResource;
use App\Models\Post;

class UpdateController extends BaseController
{
    public function __invoke(UpdateRequest $request, Post $post)
    {
        $data = $request->validated();

        $post = $this->service->update($post, $data);

        return new PostResource($post);
    }
}