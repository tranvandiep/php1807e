<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use View;

class SharedProvider extends ServiceProvider {
	/**
	 * Bootstrap services.
	 *
	 * @return void
	 */
	public function boot() {
		$title = "Xin Chao";
		View::share('title', $title);
	}

	/**
	 * Register services.
	 *
	 * @return void
	 */
	public function register() {
		//
	}
}
