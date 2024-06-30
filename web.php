<?php

/** @var \Laravel\Lumen\Routing\Router $router */

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->get('/', function () use ($router) {
    return $router->app->version();
});

//get all category
$router->get('/category', 'CategoryController@index');

//get category by id
$router->get('/category/{id}','CategoryController@show');

//get category
$router->post('/category','CategoryController@store');

//update category
$router->put('/category/{id}','CategoryController@update');

//delete category
$router->delete('/category/{id}','CategoryController@destroy');

