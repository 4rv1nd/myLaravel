<?php

namespace App\Console\Commands;

use App\Models\Blog;
use App\Models\Blog_categorie;
use App\Models\Blog_tag;
use App\Models\ModulesData;
use App\Models\Services\SchServices;
use Carbon\Carbon;
use Illuminate\Console\Command;
use Spatie\Crawler\Crawler;
use Spatie\Sitemap\Sitemap;
use Spatie\Sitemap\SitemapGenerator;
use Spatie\Sitemap\Tags\Url;

class GenerateSitemap extends Command{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'sitemap:generate';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Generate the sitemap.';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct(){
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle(){
        
        $web_url = config('app.url');
        $path = public_path('sitemap.xml');
        Sitemap::create()
            ->add($web_url)
            ->add(ModulesData::where('module_id',6)->where('status','active')->get())
            ->add(ModulesData::where('module_id',8)->where('status','active')->get())
            ->add(ModulesData::where('module_id',9)->where('status','active')->get())
            ->add(ModulesData::where('module_id',29)->where('status','active')->get())
            ->writeToFile($path);
        // SitemapGenerator::create($web_url)->writeToFile($path);
    }
}