<?php

namespace App\Providers;

use App\Filesystem\Filesystem;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    public function register()
    {
        $this->app->singleton('files', fn () => new Filesystem);
    }
}