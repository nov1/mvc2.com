<?session_start();?>
<!DOCTYPE html>
<html>
<head>
	<title>&#10026 DMobile &#10026</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class ="main_background">
<div id='wrapper-content'>
	<header>
        <span class="m-menu">
            <a href="/"><img src="images/static_img/Logo2-s.png" alt="Logo2-s.png"></a>
            <a href="/">Главная</a>
            <a href="/about">О нас</a>
            <a href="/contacts">Контакты</a>
            <a href="/delivery">Доставка</a>
            <a href="/answers">Вопросы и ответы</a>
        </span>
		<div class='find'>
			<form class="form-search" method="get" action="/search" target="_blank">
				<input type="text" name="q" placeholder="| поиск" >
			</form>
		</div>
<!--		<div class="authorization">-->
<!--<!--			--><?////include "process/autorizationForm.php" ?>
<!---->
<!--			--><?//$s = file_get_contents('http://ulogin.ru/token.php?token=' . $_POST['token'] . '&host=' . $_SERVER['HTTP_HOST']);
//			$user = json_decode($s, true);
//			//$user['network'] - соц. сеть, через которую авторизовался пользователь
//			//$user['identity'] - уникальная строка определяющая конкретного пользователя соц. сети
//			//$user['first_name'] - имя пользователя
//			//$user['last_name'] - фамилия пользователя
//			// var_dump($user['uid']);
//
//
//			if($user['uid']){
//				$dbc = mysqli_connect(DB_HOST,DB_USER,DB_PASSWORD,"HawkEyes");
//				if(!$dbc){
//					//код вывода страницы ошибки (Проводятся технические работы)
//					die();
//				}
//				$network = $user['network'];
//				$uid = $user['uid'];
//				$first_name = $user['first_name'];
//				$last_name = $user['last_name'];
//
//				$query="SELECT *
//            FROM `users`
//            WHERE fb_id=$uid;";
//				$res=mysqli_query($dbc, $query);
//				$res=mysqli_fetch_assoc($res);
//
//				if($res['fb_id'] != $user['uid']){
//					$query = "INSERT INTO `users`(`social_netw`, `fb_id`, `name`, `sec_name`)
//              VALUES ('".$network."',  $uid, '". $first_name."','".$last_name."')";
//					$res=mysqli_query($dbc, $query);
//					$_SESSION['auth'] = true;
//					$_SESSION['name'] =  $first_name;
//				}else{
//					$_SESSION['auth'] = true;
//					$_SESSION['name'] =  $first_name;
//				}
//				mysqli_close($dbc);
//				// header("location: /");
//
//
//			}
//			?>
<!--		</div>-->



		<a href="/basket" id="basket"><img src="images/static_img/basket.png" alt="basket" width="50px">
			<!--  Подсчет количества товаров в корзине -->
			<?
			$_COOKIE["basket"]=isset($_COOKIE["basket"]) ? $_COOKIE["basket"] : ''; //php7
			$uBasket=unserialize($_COOKIE["basket"]);
			if(count($uBasket)!=0){?>
				<div id="fullBasket">
					<?=count($uBasket);?>
				</div>
			<?}?>
		</a>
		<div class="menu2">
			<center>
				<a href="/catalogue" >Все смартфоны</a>
				<a href="/?route=catalogue&brand=apple">Apple</a>
				<a href="/?route=catalogue&brand=samsung" >Samsung</a>
				<a href="/?route=catalogue&brand=lenovo">Lenovo</a>
				<a href="/?route=catalogue&brand=htc">HTC</a>
				<a href="/?route=catalogue&brand=xiaomi">Xiaomi</a>
				<a href="/?route=catalogue&brand=sony">Sony</a>
				<a href="/?route=catalogue&brand=asus">Asus</a>
				<a href="/?route=catalogue&brand=meizu">Meizu</a>
				<a href="/?route=catalogue&brand=huawei">Huawei</a>
				<a href="/?route=catalogue&brand=microsoft">Microsoft</a>
				<a href="/?route=catalogue&brand=motorolla">Motorolla</a>
				<a href="/?route=catalogue&brand=headphones">Наушники</a>
				<a href="/?route=catalogue&brand=protection">Чехлы и защита</a>
				<a href="/?route=admin">Admin</a>
			</center>
		</div>
	</header>

	<div class="m-content">
<!--		--><?// include "route.php";?>
		<?php include 'application/views/'.$content_view; ?>
	</div>
</body>
</div>

<div class='footer'>
 <span id="footSpan">
      <div class="footInfo">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo modi mollitia ducimus numquam, quod voluptates molestias, amet recusandae odio impedit.</div>
      <div class="footInfo">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo modi mollitia ducimus numquam, quod voluptates molestias, amet recusandae odio impedit.</div>
      <div class="footInfo">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo modi mollitia ducimus numquam, quod voluptates molestias, amet recusandae odio impedit.</div>
  </span>
</div>
</div>
</html>