<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BajuController;
use App\Http\Controllers\CelanaController;
use App\Http\Controllers\JacketController;
use App\Http\Controllers\TopiController;
use App\Http\Controllers\SepatuController;

use App\Http\Controllers\SemuaController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

//baju
Route::get('/bajus', [BajuController::class, 'index']);
Route::get('/bajus/{id}', [BajuController::class, 'show']);
Route::post('/bajus', [BajuController::class, 'simpan']);
Route::put('/bajus/{id}', [BajuController::class, 'update']);
Route::delete('/bajus/{id}', [BajuController::class, 'destroy']);

//celana
Route::get('/celanas', [CelanaController::class, 'index']);
Route::get('/celanas/{id}', [CelanaController::class, 'show']);
Route::post('/celanas', [CelanaController::class, 'simpan']);
Route::put('/celanas/{id}', [CelanaController::class, 'update']);
Route::delete('/celanas/{id}', [CelanaController::class, 'destroy']);

//jacket
Route::get('/jackets', [JacketController::class, 'index']);
Route::get('/jackets/{id}', [JacketController::class, 'show']);
Route::post('/jackets', [JacketController::class, 'simpan']);
Route::put('/jackets/{id}', [JacketController::class, 'update']);
Route::delete('/jackets/{id}', [JacketController::class, 'destroy']);

//topi
Route::get('/topis', [TopiController::class, 'index']);
Route::get('/topis/{id}', [TopiController::class, 'show']);
Route::post('/topis', [TopiController::class, 'simpan']);
Route::put('/topis/{id}', [TopiController::class, 'update']);
Route::delete('/topis/{id}', [TopiController::class, 'destroy']);

//sepatu
Route::get('/sepatus', [SepatuController::class, 'index']);
Route::get('/sepatus/{id}', [SepatuController::class, 'show']);
Route::post('/sepatus', [SepatuController::class, 'simpan']);
Route::put('/sepatus/{id}', [SepatuController::class, 'update']);
Route::delete('/sepatus/{id}', [SepatuController::class, 'destroy']);

//all
Route::get('/semuas', [SemuaController::class, 'index']);
Route::get('/semuas/{id}', [SemuaController::class, 'show']);