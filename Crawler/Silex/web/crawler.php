<?php
/**
 * Created by PhpStorm.
 * User: Yoda
 * Date: 30/01/2016
 * Time: 09:23
 */
require_once __DIR__ . '/../vendor/autoload.php';


$app = new Silex\Application();
$app['debug'] = true;


$app->get('/', function () use ($app) {

    try {
        $client = new \GuzzleHttp\Client();
        $response = $client->request(['base_url' => 'https://buscamilhas.com/buscar-voos/?token=9cfeaaf8480cdb67e953aae5caff2cbd22f37384&voo=0&origem%5B0%5D=REC&str_origem%5B0%5D=Recife%2B%28REC%29&destino%5B0%5D=FOR&str_destino%5B0%5D=Fortaleza%2B%28FOR%29&data-origem%5B0%5D=29%2F04%2F2016&adult=1&child=0&baby=0&cias=azul']);

        $result = $response->getBody();

        return $result;

    } catch (\Exception $e) {
        die($e->getMessage());
    }

});

$app->run();


