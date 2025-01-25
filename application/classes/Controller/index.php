<?php defined('SYSPATH') or die('No direct script access.');

class Controller_Index extends Controller
{

    public function action_index()
    {


        $count = DB::select(DB::expr('COUNT(*) AS mycount'))->from('articles')->execute()->get('mycount');

        $perpage = 2;


        //you can configure routes and custom routes params
        $pagination = Pagination::factory(array(
            'total_items'    => $count,
            'items_per_page' => $perpage,
        ))
            ->route_params(
                array(
                    'controller' => Request::current()->controller(),
                    'action'     => Request::current()->action(),
                )
            );


        $data = DB::select(SUBSTR('content', 0, 40), 'title', 'small_title', 'articles.id', 'articles.updated_at', 'name')
            ->from('articles')
            ->join('users')
            ->on('users.id', '=', 'articles.user_id')
            ->order_by("articles.id", "DESC")
            ->limit($pagination->items_per_page)
            ->offset($pagination->offset)
            ->group_by("articles.id")
            ->execute()->as_array();

        $title = 'Hello world!';
        // Template::factory('Index/index', array(
        //         'title' => $title,
        //         'data' =>$data,
        //         'pagination'=>$pagination,
        //     )
        // )->response();

        $view = new View_Home_Index;
        $view->set('title',  $title)
            ->set('pagination', $pagination)
            ->set('data', $data);

        $this->response->body($view);


        
    }
    public function action_total()
    {
        $total = Model::factory('articles')->getTotal();
        echo '库里面有' . $total[0]['total'] . '条数据';
    }

    public function action_detail()
    {

        if (!empty($_GET['id'])) {
            $data = Model::factory('articles')->getOne($_GET['id']);

            $title = 'Hello world!!!';
            Template::factory(
                'Index/detail',
                array(
                    'data' => $data,
                    'title' => $title,
                )
            )->response();
        } else {
            $title = 'Hello world!!!';
            $data = array('code' => 'error001', 'msg' => '参数传递错误');
            Template::factory(
                'Index/index',
                array(
                    'data' => $data,
                    'title' => $title,
                )
            )->response();
        }
    }
} // End Welcome
