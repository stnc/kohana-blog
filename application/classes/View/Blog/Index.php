<?php

class View_Blog_Index extends Kostache_Layout
{
    /**
     * @var     array    partials for the page
     */
    protected $_partials = [
        'header' => 'partials/header',
        'menu' => 'partials/menu',
        'footer' => 'partials/footer',
        'crumb' => 'crumb',
      
    ];
    public $title= false;

}
