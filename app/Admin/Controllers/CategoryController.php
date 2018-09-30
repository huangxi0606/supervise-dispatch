<?php
/**
 * Created by PhpStorm.
 * User: Hhx
 * Date: 2018/7/20
 * Time: 17:37
 */
namespace App\Admin\Controllers;
use App\Http\Controllers\Controller;
use App\Models\Category;
use Encore\Admin\Form;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Column;
use Encore\Admin\Layout\Content;
use Encore\Admin\Controllers\ModelForm;
use Encore\Admin\Layout\Row;
use Encore\Admin\Tree;
use Encore\Admin\Widgets\Box;
use Illuminate\Support\Facades\DB;

class CategoryController extends Controller
{
    use ModelForm;

//    public function index()
//    {
//        return Admin::content(function (Content $content) {
//            $content->header('树状模型');
//            $content->body(Category::tree());
//        });
//    }
    public function index()
    {
        return Admin::content(function (Content $content) {

            $content->header('类别');
//            $content->body($this->grid());
            $content->body($this->grid());
                        $content->row(function (Row $row) {
                $row->column(6, $this->treeView()->render());
//                $row->column(6, function (Column $column) {
//                    $form = new \Encore\Admin\Widgets\Form();
//                    $form->action(admin_base_path('auth/menu'));
//                    $form->select('parent_id', trans('admin.parent_id'))->options(Category::selectOptions());
//                    $form->text('title', trans('admin.title'))->rules('required');
//
//                    $column->append((new Box(trans('admin.new'), $form))->style('success'));
//                });
            });

        });
    }
    protected function treeView()
    {
        return Category::tree(function (Tree $tree) {
            $tree->disableCreate();
            $tree->branch(function ($branch) {
                $payload = "<strong>{$branch['title']}</strong>";
                return $payload;
            });
        });
    }
    public function edit($id)
    {
        return Admin::content(function (Content $content) use ($id) {

            $content->header('分类');
            $content->body($this->form()->edit($id));
        });
    }
    public function create()
    {
        return Admin::content(function (Content $content) {
//            $content->header('商品分类');
            $content->body($this->form());
        });
    }
    protected function grid()
    {
        return Admin::grid(Category::class, function (Grid $grid) {
            $grid->id('ID')->sortable();
            $grid->title('名称');
            $grid->created_at('创建时间');
            $grid->updated_at('更新时间');
        });
    }
    protected function form()
    {
        return Admin::form(Category::class, function (Form $form) {

            $form->display('id', 'ID');
            $cates =Category::where("parent_id",0)->get();
            $data=[];
            foreach ($cates as $cate){
                $data[$cate->id]=$cate->title;
            }
            $data[0]="ROOT";
//            $form->select('parent_id', trans('admin.parent_id'))->options(Category::selectOptions());
            $form->select('parent_id','所属类型')->options($data);
            $form->text('title','名称');
            $form->display('created_at', '创建时间');
            $form->display('updated_at', '更新时间');
            $form->saved(function (Form $form){
//                dd($form->model()->id);
                $this->SaveAfter($form->model()->parent_id,$form->model()->title,$form->model()->id);
            });
        });
    }
    protected function SaveAfter($parent_id,$title,$pid)
    {
        if($parent_id ==0){
            $yes =DB::table("contact")->where("name",$title)->get()->first();
            if(!$yes){
                DB::table("contact")->insert(["name"=>$title,"cate_id"=>$pid]);
            }
        }
    }
    public function destroy($id){
        $it= Category::where('id' , $id) ->delete();
        $contact =DB::table("contact")->where("cate_id",$id)->get()->first();
        if($contact){
            DB::table("contact")->where("cate_id",$id)->delete();
        }
        if($it){
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