<?php defined('SYSPATH') or die('No direct script access.');

class Controller_Blogdetail extends Controller {

    public function action_index()
    {

        $title = 'Blog';
        $view = new View_Blog_Detail;
        $view->set('title',  $title);

        $this->response->body($view);

    }

} // End Welcome
