<?php
/**
 * Created by PhpStorm.
 * User: Hhx
 * Date: 2018/7/21
 * Time: 11:18
 */
namespace App\Admin\Controllers;
use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Goods;
use App\Models\Link;
use Encore\Admin\Form;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Column;
use Encore\Admin\Layout\Content;
use Encore\Admin\Controllers\ModelForm;
use Encore\Admin\Layout\Row;
use Encore\Admin\Tree;
use Encore\Admin\Widgets\Box;
use Encore\Admin\Widgets\InfoBox;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\DB;

class LinkController extends Controller
{
    use ModelForm;

    public function index()
    {
        return Admin::content(function (Content $content) {
            $content->header('统计查看');
            $cates =DB::table("categories")->where("parent_id",'!=',0)->get();
            $content->row(function ($row)use($cates) {
                foreach ($cates as $cate){
                    $data =DB::table("categories")->where("id",$cate->parent_id)->get()->first()->title;
                    $row->column(4, new InfoBox($data.":".$cate->title, '', 'aqua', action('\App\Admin\Controllers\LinkController@index', ['data' => $cate->title]) ,
                        $count =DB::table("link")->where("data",$cate->title)->count()));
                }
            });
            $content->body($this->grid());
        });
    }
    protected function grid()
    {
        return Admin::grid(Link::class, function (Grid $grid) {
            $grid->id('ID')->sortable();
            $grid->data('类型');
            $grid->goods_id('物品名字')->display(function($goods_id){
                 return DB::table("goods")->where("id",$goods_id)->get()->first()->name;
            });
            $grid->disableCreateButton();
            $grid->disableExport();
            $grid->actions(function ($actions) {
                // 添加操作
                $actions->disableDelete();
                $actions->disableEdit();
                $actions->prepend('<a class="btn btn-xs btn-primary "
                href="' . action('\App\Admin\Controllers\GoodsController@index', ['id' => $this->row->goods_id]) . '">
                <i class="fa fa-clock-o"></i> 详细参数</a>');
            });
            $grid->filter(function (Grid\Filter $filter) {
                $filter->like('data', '类型');
            });
        });
    }

}
