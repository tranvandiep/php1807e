<?php
Route::get('/showMenu', [
		'as'   => 'showMenu',
		'uses' => 'MenuController@showMenu'
	]);