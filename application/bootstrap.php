<?
require_once "config/config.php";
require_once "core/db.php";
$db = new Db();

session_start();

// подключаем файлы ядра
require_once 'core/model.php';
require_once 'core/view.php';
require_once 'core/controller.php';

require_once 'lib/lib.php';
/*
Здесь обычно подключаются дополнительные модули, реализующие различный функционал:
	> аутентификацию
	> кеширование
	> работу с формами
	> абстракции для доступа к данным
	> ORM
	> Unit тестирование
	> Benchmarking
	> Работу с изображениями
	> Backup
	> и др.
*/

require_once 'core/route.php';

Route::start($db); // запускаем маршрутизатор

?>