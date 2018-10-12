<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Student extends Model {
	protected $table = "students";

	public function items() {
		return $this->hasMany("App\\Item", 'id_user');
	}
}
