<?php
/**
 * Created by PhpStorm.
 * User: Hhx
 * Date: 2018/7/21
 * Time: 10:57
 */
namespace App\Admin\Controllers;
use App\Admin\Extensions\CsvExporter;
use App\Admin\Extensions\ExcelExporter;
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
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\DB;

class GoodsController extends Controller
{
    use ModelForm;

    public function index()
    {
        return Admin::content(function (Content $content) {
            $content->header('物品管理');
            $content->body($this->grid());
        });
    }
    public function edit($id)
    {
        return Admin::content(function (Content $content) use ($id) {
            $content->header('物品管理');
            $hhx =$id;
            $content->body($this->form($hhx)->edit($id));

        });
    }
    public function create()
    {
        return Admin::content(function (Content $content) {
            $content->header('物品管理');
            $content->body($this->form());
        });
    }
    protected function grid()
    {
        return Admin::grid(Goods::class, function (Grid $grid) {
            $grid->id('ID')->sortable();
            $grid->name('物品名称');
            $arr =DB::table("contact")->get();
            foreach ($arr as $hh=> $ar){
                $grid->column($ar->name)->display(function () use ($ar) {
                    foreach ($this->links as $link){
                        if($link->cate==$ar->name){
                            return $link->data;
                        }
                    }
                });
            }

            $grid->disableExport();
            $grid->disableRowSelector();

            $grid->filter(function (Grid\Filter $filter) {
                $filter->like('name', '物品名称');
            });
        });
    }
    protected function form($mode = 'create')
    {
        return Admin::form(Goods::class, function (Form $form)use($mode) {
            $form->display('id', 'ID');
            $form->text('name','物品名称');
            $hh =DB::table("contact")->get();
            foreach ($hh as $h) {
                $title = Category::where("parent_id", $h->cate_id)->pluck('title');
                $directors=[];
                foreach ($title as $t){
                    $directors[$t]=$t;
                }
                if($mode !='create'){
                    $links =Link::where("goods_id",$mode)->where("cate",$h->name)->get()->first();
                        if($links){
                        $link =$links->data;
                        }
                    if($links){
                            if($link){
                                $form->select($h->name)->options($directors)->default($link);
                            }else{
                                $form->select($h->name)->options($directors)->default();
                            }
                    }
                }else{
                    $form->select($h->name)->options($directors);
              }
            }
//            $form->display('created_at', '创建时间');
//            $form->display('updated_at', '更新时间');
        });
    }
    public function store(){
        $data = Input::all();
        DB::table("goods")->insert(["name"=>$data['name']]);
        $gid =DB::table("goods")->where(["name"=>$data['name']])->get()->first()->id;
        unset($data['name']);
         unset($data['_token']);
          unset($data['_previous_']);
          foreach ($data as $key => $value){
              DB::table("link")->insert(["goods_id"=>$gid,"cate"=>$key,"data"=>$value]);
          }
    }

    public function update($id){
        $data = Input::all();
        unset($data['name']);
        unset($data['_token']);
        unset($data['_previous_']);
        foreach ($data as $key => $value){
            DB::table("link")->where(["goods_id"=>$id,"cate"=>$key])->update(["data"=>$value]);
        }
        return redirect(url('admin/goods'));
    }

    public function destroy($id){
        $good = Goods::where('id' , $id) ->delete();
        $link = Link::where("goods_id",$id)->delete();
        if($good){
                return response()->json([
                    'status'  => true,
                    'message' => trans('admin.delete_succeeded'),
                ]);
            } else {
                return response()->json([
                    'status'  => false,
                    'message' => trans('admin.delete_failed'),
                ]);
            }
    }
}