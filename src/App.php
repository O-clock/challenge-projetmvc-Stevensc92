<?php
namespace ProjetMVC;

class App
{
	private $router;

    public function __construct()
    {
        $this->router = new \AltoRouter();
        $this->router->setBasePath('/cours/project-mvc');

        // List of route of api
        $this->router->map('GET', '/', 'HomeController#home', 'home');
        $this->router->map('GET', '/car', 'HomeController#car', 'car');
    }

    public function run()
    {
        // routage
        $match = $this->router->match();

        if ($match)
        {
            $target = explode('#', $match['target']);
            $controllerName = "ProjetMVC\\Controller\\".$target[0];
            $methodName = $target[1];

            $controller = new $controllerName();

			call_user_func([$controller, $methodName], $match['params']);
        }
        // dispatch
    }
}
?>
