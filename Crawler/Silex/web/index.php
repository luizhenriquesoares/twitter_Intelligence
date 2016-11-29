<?php

/**
 * Created by PhpStorm.
 * User: Luiz Henrique Soares
 * Date: 29/11/2016
 * Time: 09:23
 */
require_once __DIR__ . '/../vendor/autoload.php';

use Goutte\Client;

$app = new Silex\Application();
$app['debug'] = true;


$app->get('/', function () use ($app) {

    $client = new Client();
    $crawler = $client->request('GET', 'https://twitter.com/oncase/status/801384138142023680/photo/1');
    $html = $crawler->html();

    writeDocument($html);
});

$app->run();

/**
 * @param $html
 *
 * Write document on txt
 *
 */
function writeDocument($html)
{
    $nameFile = 'crawler.txt';
    $content = fopen($nameFile, 'a');
    fwrite($content, $html);
    fclose($content);
}