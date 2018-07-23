<?php

use Illuminate\Routing\Router;


Route::group([
    'prefix'        => config('admin.route.prefix'),
//    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'App\Admin\Controllers\HomeController@index');
    $router->resource('category', 'App\Admin\Controllers\CategoryController');
    $router->resource('goods', 'App\Admin\Controllers\GoodsController');

});

Admin::registerAuthRoutes();

