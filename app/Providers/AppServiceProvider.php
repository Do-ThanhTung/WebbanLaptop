<?php

namespace App\Providers;

use App\Models\VpCategory;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        if (\Illuminate\Support\Facades\Schema::hasTable('vp_categories')) {
            $data['categories'] = VpCategory::all();
            view()->share($data);
        }
    }
}
