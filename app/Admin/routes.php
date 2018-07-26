<?php

use Illuminate\Routing\Router;


Route::group([
    'prefix'        => config('admin.route.prefix'),
//    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

//    $router->get('/', 'App\Admin\Controllers\GoodsController');
    $router->get('/', function (){
        return redirect('/admin/goods');
    });
    $router->resource('category', 'App\Admin\Controllers\CategoryController');
    $router->resource('goods', 'App\Admin\Controllers\GoodsController');
    $router->resource('links', 'App\Admin\Controllers\LinkController');

});

Admin::registerAuthRoutes();

