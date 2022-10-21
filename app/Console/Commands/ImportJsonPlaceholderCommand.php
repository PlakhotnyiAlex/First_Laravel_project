<?php

namespace App\Console\Commands;

use App\Components\ImportDataClient;
use App\Models\Category;
use App\Models\Post;
use Illuminate\Console\Command;
use const http\Client\Curl\POSTREDIR_301;

class ImportJsonPlaceholderCommand extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'import:jsonplaceholder';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Get data from jsonplaceholder';

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $import = new ImportDataClient();
        $response = $import->client->request('GET', 'posts');
        $data = json_decode($response->getBody()->getContents());
        $categoryCount = Category::all()->count();

            foreach ($data as $item){
                    Post::firstOrCreate([
                        'title' => $item->title
                    ],
                    [
                        'title' => $item->title,
                        'content' => $item->body,
                        'category_id' => random_int(1, $categoryCount),
                    ]);
                }
                dd('finish!');;


    }
}
