<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder {
	/**
	 * Seed the application's database.
	 *
	 * @return void
	 */
	public function run() {
		// $this->call(UsersTableSeeder::class);
		for ($i = 0; $i < 100; $i++) {
			DB::table('news')->insert([
					'title'      => 'title '.$i,
					'href_param' => 'title-'.$i,
					'content'    => 'content '.$i,
					'thumbnail'  => 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg',
					'created_at' => "2018-12-10 06:00:00",
					'updated_at' => "2018-12-10 06:00:00"
				]);
		}
	}
}
