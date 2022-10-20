<?php

namespace App\Http\Controllers\Api\Post;

use App\Http\Controllers\Controller;
use App\Services\Post\ApiService;

class BaseController extends Controller
{
    public $service;
    public function __construct(ApiService $service)
    {
        $this->service=$service;
    }
}
