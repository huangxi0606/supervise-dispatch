<?php
/**
 * Created by PhpStorm.
 * User: Hhx
 * Date: 2018/7/20
 * Time: 17:34
 */
namespace App\Models;

use Encore\Admin\Traits\AdminBuilder;
use Encore\Admin\Traits\ModelTree;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use ModelTree, AdminBuilder;

    protected $table = 'categories';

//    public function __construct(array $attributes = [])
//    {
//        parent::__construct($attributes);
//
//        $this->setParentColumn('pid');
//        $this->setOrderColumn('sort');
//        $this->setTitleColumn('name');
//    }
}