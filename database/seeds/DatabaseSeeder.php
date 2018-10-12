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
		DB::table('students')->insert([
				'username'   => "admin",
				'email'      => "admin@gmail.com",
				'address'    => "ABC",
				'gender'     => 'Nam',
				'created_at' => "2018-12-10 06:00:00",
				'updated_at' => "2018-12-10 06:00:00"
			]);
	}
}
