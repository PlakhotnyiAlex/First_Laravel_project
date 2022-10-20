<?php

namespace App\Http\Controllers\Api\Post;

use App\Http\Requests\Post\ApiStoreRequest;
use App\Http\Resources\Post\PostResource;
use App\Models\Category;
use App\Models\Post;
use App\Models\Tag;

class StoreController extends BaseController
{
    public function __invoke(ApiStoreRequest $request)
    {
        $data = $request->validated();

        $post = $this->service->store($data);
        return $post instanceof Post ? new PostResource($post) : $post;

    }

}
