<?php defined('SYSPATH') or die('No direct script access.');

class Controller_About extends Controller
{

    /**
     * Controller used to manage single page demo  The #[single page] attribute
     * It can only be used in controllers 
     *
     * @author Selman TUNC
     */
    public function action_index()
    {

        $title = 'Hello world!!!';
        $view = new View_About_Index;
        $view->set('title',  $title);

        $this->response->body($view);
    }
} // End Welcome
