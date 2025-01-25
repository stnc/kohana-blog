<?php

class View_Home_Index extends Kostache_Layout
{
    /**
     * @var     array    partials for the page
     */
    protected $_partials = [
        'header' => 'partials/header',
        'menu' => 'partials/menu',
        'footer' => 'partials/footer',
        'slider' => 'home/slider',
         'searchBar' => 'home/searchBar',
        'upcomingrace' => 'home/upcomingrace',
        'introduction' => 'home/introduction',
        'introduction2' => 'home/introduction2',
        'why' => 'home/why',
        'banner' => 'home/banner',
        'blog' => 'home/blog',
      
    ];

    /**
     * @var     boolean   show the banner space on template
     */
    public $banner_exists = false;

    /**
     * @var     boolean   triggers the menu bar open or close 
     */
    public $menu_show= true;
}
