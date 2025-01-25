<?php defined('SYSPATH') or die('No direct script access.');

class Controller_Blog extends Controller {

    public function action_index()
    {

        $title = 'Blog';
        $view = new View_Blog_Index;
        $view->set('title',  $title);

        $this->response->body($view);

    }

} // End Welcome
