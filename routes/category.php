<?php
Route::get('/showCategory', [
		'as'   => 'showCategory',
		'uses' => 'CategoryController@showCategory'
	]);

Route::post('/postCategory', [
		'as'   => 'postCategory',
		'uses' => 'CategoryController@postCategory'
	]);

Route::post('/deleteCategory', [
		'as'   => 'deleteCategory',
		'uses' => 'CategoryController@deleteCategory'
	]);