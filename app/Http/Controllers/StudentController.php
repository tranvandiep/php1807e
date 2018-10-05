<?php

namespace App\Http\Controllers;

use DB;
use Illuminate\Http\Request;

class StudentController extends Controller {
	public function inputStudent(Request $request) {
		$username = $request->username;
		$email    = $request->email;
		$address  = $request->address;

		$my_date = new \DateTime();
		$today   = $my_date->format('Y-m-d H:i:s');

		DB::table('students')->insert([
				'username'   => $username,
				'email'      => $email,
				'address'    => $address,
				'gender'     => 'Nam',
				'created_at' => $today,
				'updated_at' => $today
			]);

		return redirect('/input');
	}

	public function showStudents(Request $request) {
		# code...
		$students = DB::table('students')
			->paginate(6);

		return view('details')->with([
				'students' => $students
			]);

		// return view('details', [
		// 		'students' => $students
		// 	]);
	}
}
