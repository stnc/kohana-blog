<?php defined('SYSPATH') OR die('No direct access allowed.');

return array(

	'driver'       => 'ORM', //driver is set to File initially. change it to ORM
	'hash_method'  => 'sha256',
	//hask key is set to NULL initially, change it to random set of character.
	//once you change the hash key, dont change it again because every password in the database will be unusable.
	'hash_key'     => '18krishasfkjlk', 
	'lifetime'     => 1209600,
	'session_type' => Session::$default,
	'session_key'  => 'auth_user',

	// Username/password combinations for the Auth File driver
	'users' => array(
		// 'admin' => 'b3154acf3a344170077d11bdb5fff31532f679a1919e716a02',
	),

);
