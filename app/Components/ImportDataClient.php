<?php

namespace App\Components;

use GuzzleHttp\Client;

class ImportDataClient
{
    public $client;

    /**
     * ImportDataClient constructor.
     * @param $client
     */
    public function __construct()
    {
        $this->client = new Client([
            'base_uri' => 'https://jsonplaceholder.typicode.com/posts',
            'timeout' => 20.0,
            'verify' => false,
        ]);
    }


}
