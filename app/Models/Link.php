<?php
/**
 * Created by PhpStorm.
 * User: Hhx
 * Date: 2018/7/21
 * Time: 11:17
 */
namespace App\Models;

use Encore\Admin\Traits\AdminBuilder;
use Encore\Admin\Traits\ModelTree;
use Illuminate\Database\Eloquent\Model;

class Link extends Model
{
    use ModelTree, AdminBuilder;

    protected $table = 'link';
    public function good()
    {
        return $this->belongsTo(Goods::class);
    }

}