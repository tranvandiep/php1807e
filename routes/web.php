<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
 */
Route::get('/', [
		'as'   => 'home',
		'uses' => 'FrontendController@showHome'
	]);

Route::get('/inputTest', [
		'as'   => 'inputTest',
		'uses' => 'TestController@inputTest'
	]);

Route::get('/listItem', [
		'as'   => 'listItem',
		'uses' => 'StudentController@listItem'
	]);

Route::post('/postTest', [
		'as'   => 'postTest',
		'uses' => 'TestController@postTest'
	]);

Route::get('/input', [
		'as'   => 'input',
		'uses' => 'StudentController@input'
	]);

Route::get('/deleteStudent/{id}', [
		'as'   => 'deleteStudent',
		'uses' => 'StudentController@deleteStudent'
	]);

Route::post('/deleteStudent', [
		'as'   => 'deleteStudentForm',
		'uses' => 'StudentController@deleteStudentForm'
	]);

Route::post('/inputStudent', [
		'as'   => 'inputStudent',
		'uses' => 'StudentController@inputStudent'
	]);

Route::get('/showStudents', [
		'as'   => 'showStudents',
		'uses' => 'StudentController@showStudents'
	]);

Route::group(['middleware' => 'auth'], function () {
		//    Route::get('/link1', function ()    {
		//        // Uses Auth Middleware
		//    });

		//Please do not remove this if you want adminlte:route and adminlte:link commands to works correctly.
		#adminlte_routes
	});