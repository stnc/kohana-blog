<?php defined('SYSPATH') or die('No direct script access.');

class Controller_Contact extends Controller {

    public function action_index()
    {

        $title = 'Hello world!!!';
        $view = new View_Contact_Index;
        $view->set('title',  $title);

        $this->response->body($view);

    }

} // End Welcome
