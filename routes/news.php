<?php

Route::get('/news/list', [
		'as'   => 'news-list',
		'uses' => 'NewsController@list'
	]);
Route::get('/news/input', [
		'as'   => 'news-input',
		'uses' => 'NewsController@input'
	]);
Route::get('/news/post', [
		'as'   => 'news-post',
		'uses' => 'NewsController@post'
	]);
Route::get('/news/delete', [
		'as'   => 'news-delete',
		'uses' => 'NewsController@delete'
	]);
Route::get('/detail/{href_pram}', [
		'as'   => 'news-detail',
		'uses' => 'NewsController@detail'
	]);