<?php
/**
 * Created by PhpStorm.
 * User: Hhx
 * Date: 2018/7/21
 * Time: 10:36
 */
namespace App\Models;

use Encore\Admin\Traits\AdminBuilder;
use Encore\Admin\Traits\ModelTree;
use Illuminate\Database\Eloquent\Model;

class Goods extends Model
{
    use ModelTree, AdminBuilder;

    protected $table = 'goods';
//    public function __construct(array $attributes = [])
//    {
//        parent::__construct($attributes);
//
//        $this->setParentColumn('pid');
//        $this->setOrderColumn('sort');
//        $this->setTitleColumn('name');
//    }
    public function links()
    {
        return $this->hasMany(Link::class);
    }
}
