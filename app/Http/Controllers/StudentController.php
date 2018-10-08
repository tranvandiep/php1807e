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
		$id      = $request->id;
		if ($id == 0) {
			//insert data
			DB::table('students')->insert([
					'username'   => $username,
					'email'      => $email,
					'address'    => $address,
					'gender'     => 'Nam',
					'created_at' => $today,
					'updated_at' => $today
				]);
		} else {
			//update
			DB::table('students')
				->where('id', $id)
				->update([
					'username'   => $username,
					'email'      => $email,
					'address'    => $address,
					'gender'     => 'Nam',
					'created_at' => $today,
					'updated_at' => $today
				]);
		}

		return redirect('/input');
	}

	public function deleteStudent(Request $request, $id) {
		# code...
		DB::table('students')
			->where('id', $id)
			->delete();
		return redirect('/showStudents');
	}

	public function deleteStudentForm(Request $request) {
		# code...
		DB::table('students')
			->where('id', $request->id)
			->delete();
		return redirect('/showStudents');
	}

	public function showStudents(Request $request) {
		# code...
		$students = DB::table('students')
			->paginate(6);

		return view('details')->with([
				'students' => $students,
				'page'     => 'show'
			]);

		// return view('details', [
		// 		'students' => $students
		// 	]);
	}

	public function input(Request $request) {
		# code...
		$id       = 0;
		$student  = null;
		$username = $email = $address = "";
		$status   = 0;
		if (isset($request->id)) {
			$id      = $request->id;
			$student = DB::table('students')
				->where('id', $id)
				->get();
			if ($student != null && count($student) > 0) {
				$username = $student[0]->username;
				$email    = $student[0]->email;
				$address  = $student[0]->address;
				$status   = 1;
			}
		}
		return view('input')->with([
				'page'     => 'input',
				'username' => $username,
				'email'    => $email,
				'address'  => $address,
				'status'   => $status,
				'id'       => $id
			]);
	}
}
