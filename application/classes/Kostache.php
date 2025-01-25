<?php

class Kostache extends Kohana_Kostache
{
    /**
     * @var     array    partials for the page
     */
    protected $_partials = [
        'header' => 'partials/header',
        'footer' => 'partials/footer',
    ];

    /**
     * @var     string    title of the site
     */
    public $title = 'Kohana: The Swift PHP Framework';

    /**
     * @var     boolean   show the banner space on template
     */
    public $banner_exists = false;

    /**
     * @var     string    description of the page
     */
    public $description = 'Kohana homepage. Kohana is an HMVC PHP5 framework
	 that provides a rich set of components for building web applications.';

    /**
     * Return the charset for the page
     *
     * @return  string
     */
    public function charset()
    {
        return Kohana::$charset;
    }

    /**
     * Return the language for the page
     *
     * @return  string
     */
    public function language()
    {
        return I18n::$lang;
    }

    /**
     * Return the full year (for copyright notice)
     *
     * @return  string
     */
    public function year()
    {
        return date('Y');
    }

    /**
     * Turn on the google analytics in production
     *
     * @return  boolean
     */
    public function stats()
    {
        return Kohana::$environment === Kohana::PRODUCTION;
    }

    /**
     * Returns URL::base() in order to link to assets properly
     *
     * @return  string
     */
    public function base_url()
    {
        return URL::base();
    }

    /**
     * Returns home page url
     *
     * @return  string
     */
    public function home_url()
    {
        return Route::url('home');
    }

    /**
     * Returns download page url
     *
     * @return  string
     */
    public function download_url()
    {
        return Route::url('download');
    }

    /**
     * Returns documentation page url
     *
     * @return  string
     */
    public function documentation_url()
    {
        return Route::url('documentation');
    }

    /**
     * Returns donate page url
     *
     * @return  string
     */
    public function donate_url()
    {
        return Route::url('donate');
    }

    /**
     * Returns development page url
     *
     * @return  string
     */
    public function development_url()
    {
        return Route::url('development');
    }

    /**
     * Returns team page url
     *
     * @return  string
     */
    public function team_url()
    {
        return Route::url('team');
    }

    public function github_releases_url()
    {
        return 'https://github.com/kilofox/kohana/releases';
    }

    /**
     * Returns current kohana version
     *
     * @return  string
     */
    public function kohana_version()
    {
        return Kohana::VERSION;
    }

    /**
     * Returns current kohana codename
     *
     * @return  string
     */
    public function kohana_codename()
    {
        return Kohana::CODENAME;
    }

}
