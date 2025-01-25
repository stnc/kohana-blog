<?php defined('SYSPATH') or die('No direct script access.');

class Controller_Index extends Controller
{

    public function action_index()
    {


        $count = DB::select(DB::expr('COUNT(*) AS mycount'))->from('races')->execute()->get('mycount');

        $perpage = 10;


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


        $data = DB::select(SUBSTR('content', 0, 40), 'title',  'races.id', 'races.updated_at', 'location','logo','distances')
            ->from('races')
            ->join('users')
            ->on('users.id', '=', 'races.user_id')
            ->order_by("races.id", "DESC")
            ->limit($pagination->items_per_page)
            ->offset($pagination->offset)
            ->group_by("races.id")
            ->execute()->as_array();

            // print_r($data);
        $title = 'Hello world!';


        $view = new View_Home_Index;
        $view->set('title',  $title)
            ->set('pagination', $pagination)
            ->set('data', $data);

        $this->response->body($view);


        
    }
    public function action_total()
    {
        $total = Model::factory('races')->getTotal();
        echo 'There are ' . $total[0]['total'] . ' data in total';
    }

    public function action_detail()
    {

        if (!empty($_GET['id'])) {
            $data = Model::factory('races')->getOne($_GET['id']);

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
            $data = array('code' => 'error001', 'msg' => 'There is a problem');
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
