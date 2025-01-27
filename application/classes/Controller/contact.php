<?php defined('SYSPATH') or die('No direct script access.');

class Controller_Contact extends Controller
{

    /**
     * Controller used to manage contact (contact). The #[HOMEPAGE] attribute
     * It can only be used in controllers 
     *
     * @author Selman TUNC
     */
    public function action_index()
    {

        $title = 'Hello world!!!';
        $view = new View_Contact_Index;
        $view->set('title',  $title);

        $this->response->body($view);
    }
} // End Welcome
