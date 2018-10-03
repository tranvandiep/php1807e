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

Route::get('/', function () {
		return view('welcome');
	});

Route::group(['middleware' => 'auth'], function () {
		//    Route::get('/link1', function ()    {
		//        // Uses Auth Middleware
		//    });

		//Please do not remove this if you want adminlte:route and adminlte:link commands to works correctly.
		#adminlte_routes
	});

Route::get('/su-kien/{url_param}', function ($url_param) {
		echo $url_param;
		// return "ABC";
	});

Route::get('/abc/{param1}/{param2}', function ($param1, $param2) {
		echo $param1;
		echo "<br/>";
		echo $param2;
		// return "ABC";
	});

Route::get('/abc/{param1}-{param2}', function ($param1, $param2) {
		echo $param1;
		echo "<br/>";
		echo $param2;
		// return "ABC";
	});

// Route::get('/xinchao', function () {
// 		echo "Hello";
// 		// return "ABC";
// 	});

// Route::get('/xinchao/abc', function () {
// 		echo "Hello ABC";
// 		// return "ABC";
// 	});

Route::group(['prefix' => '/xinchao'], function () {
		Route::get('/', function () {
				echo "Hello";
				// return "ABC";
			});

		Route::get('/test', function () {
				return view('test');
			});

		Route::get('/abc', function () {
				echo "Hello ABC";
				// return "ABC";
			});
	});

Route::get('test', 'TestController@showTest');

Route::get('testView', 'TestController@showTestView');

Route::get('test/{param}', 'TestController@showTest2');