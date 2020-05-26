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


Route::get('/', 'userController@index');  //rota pagina index


//rota para criação de um novo usuário
Route::get('create', 'userController@create'); //pagina create
Route::post('store', 'userController@store'); //insere os dados no BD


//rotas para edição de um usuário já existente
Route::get('edit/{id}', 'userController@edit'); // página de editar
Route::post('update/{id}', 'userController@update'); //faz a alteração dos dados na tabela


//rota para excluir usuário
Route::get('delete/{id}', 'userController@delete');


//rota para consultas
Route::post('get', 'userController@get');

