<?
//1. отображение ошибок на время разработки сайта
ini_set('display_errors', 1);
// Добавить пустую корзину при первом входе
$_COOKIE["basket"] = isset($_COOKIE["basket"]) ? $_COOKIE["basket"] : serialize([]); // php7
if(count(unserialize($_COOKIE["basket"])) == 0){
    $uBasket = [];
    $sBasket = serialize($uBasket);
    setcookie("basket", $sBasket, time()+99999999, "/");
}

require_once 'application/bootstrap.php'; // Front controller

?>