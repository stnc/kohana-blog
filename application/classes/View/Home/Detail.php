<?php

class View_Home_Detail extends Kostache_Layout
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


}
