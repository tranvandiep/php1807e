<?php
Route::get('/showMenu', [
		'as'   => 'showMenu',
		'uses' => 'MenuController@showMenu'
	]);

Route::post('/postMenu', [
		'as'   => 'postMenu',
		'uses' => 'MenuController@postMenu'
	]);

Route::post('/deleteMenu', [
		'as'   => 'deleteMenu',
		'uses' => 'MenuController@deleteMenu'
	]);