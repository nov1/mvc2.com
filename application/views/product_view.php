<link rel="stylesheet" href="../css/style-product.css">
<div class="product">
<?
//echo "<pre>";
//print_r($data);
if($data){?>
    <h1><?=$data["name"]?></h1>
    <div class="menu_top"><br>
        <a href="#">Все о товаре</a>
        <a href="#">Характеристики</a>
        <a href="#">Обзор и Видео</a>
        <a href="#">Фото</a>
        <a href="#">Отзывы <?=$data["reviews"][1]?></a>
        <a href="#">Услуги</a>
        <a href="/catalogue">Вернуться назад</a>
        <hr>
    </div>
    <div class="good" >
        <!-- видео -->
        <div class="video">
            <?if ($data["video"]){?>
                <a href="<?=$data["video"]?>"><center><img src="images/static_img/video.jpg" title="Видеообзор" alt="Видеообзор" width="25px" /><br>video</center></a>
            <?}?>
        </div>
        <!-- изображения товара -->
        <div class="imgGood">
            <?if ($data['images']) {?>
                <a href="images/<?=$data['images']["main_img"];?>" target="_blank">
                    <img src="images/<?=$data['images']["main_img_medium"];?>" alt="<?=$data['images']["alt_img"]?>" title="<?=$data['images']["title_img"]?>">
                </a>
            <?}?>
        </div>
        <div class="preview">
            <?if($data['images']['img_1']){?><a href="images/<?=$data['images']["img_1"];?>" target="blank" ><img src="images/<?=$data['images']['img_1_small']?>"></a><br><?}?>
            <?if($data['images']['img_2']){?><a href="images/<?=$data['images']["img_2"];?>" target="blank" ><img src="images/<?=$data['images']['img_2_small']?>"></a><br><?}?>
            <?if($data['images']['img_3']){?><a href="images/<?=$data['images']["img_3"];?>" target="blank" ><img src="images/<?=$data['images']['img_3_small']?>"></a><br><?}?>
            <?if($data['images']['img_4']){?><a href="images/<?=$data['images']["img_4"];?>" target="blank" ><img src="images/<?=$data['images']['img_4_small']?>"></a><br><?}?>
            <?if($data['images']['img_5']){?><a href="images/<?=$data['images']["img_5"];?>" target="blank" ><img src="images/<?=$data['images']['img_5_small']?>"></a><br><?}?>
        </div>
        <!-- стикер -->
        <?switch ($data["sticker"]){
            case false;
                $class = "";
            break;
            case "Суперцена";
                $class = "superPrice";
            break;
            case "Топ продаж";
                $class = "topSales";
            break;
            case "Акция";
                $class = "stock";
            break;
        }?>
        <div class="stiker">
            <div class="<?=$class?>"><?=$data["sticker"]?></div>
        </div>
        <!-- демо -->
        <div class="demo">
            <?if ($data["demo"]){?>
                <a href="<?=$data["demo"]?>"><center><img src="images/static_img/demo.jpg" title="Демонстрация" alt="Демонстрация" width="25px" /><br>demo</center></a>
            <?}?>
        </div>
        <!-- цвета -->
        <div class="colorsGood">
            <?foreach($data['colors'] as $k=>$v){?>
                <span><a href="/product?id=<?=$data["id"]?>"><img src="images/static_img/<?=$v["target"]?>" width=100% class="colorChoise" alt="<?=$v["name"]?>"/></a></span>
            <?}?>
        </div>
        <!-- наличие -->
        <div class="endingGood">
            <?if ($data["in_stock"]){?>Заканчивается<?}?>
        </div>
        <!-- старая цена -->
        <div class="oldPrice">
            <?if ($data["old_price"]) {?>
                <del><span><?=$data["old_price"]."<small>"?></span></del><?=" грн</small>"?>
            <?}?>
        </div>
        <div class="PriceContainer">
            <div class="price">
                <?if ($data["price"]) {?>
                    <?=$data["price"]."<small> грн</small>"?>
                <?}?>
            </div>
            <!-- отзывы -->
<!--            --><?//$query="SELECT `id_comm`, `g_id`, `comm_description`, `plus`, `minus`
//				  FROM `comments`
//				  WHERE g_id=$g_id;";
//            $res=mysqli_query($dbc, $query);
//            $comments=[];
//            while ($row = mysqli_fetch_assoc($res)){
//                $comments[]=$row;
//            }
//            $comments_count = count($comments);
            $comments_count=0;
//            ?>
            <div class="reviews">
                <?for($f=$comments_count; $f<=$comments_count; $f++){
                    $rest=$f%10;
                    if(($f===0) || ($rest>=5 && $rest<=9) || ($f%100>=10 && $f<=20)){
                        $last="ов";
                    }elseif($rest===1){
                        $last= "";
                    }else{$last= "a";
                    }
                }?>
                <a href=""><?=$comments_count." "." отзыв".$last?> </a>
            </div>
        </div>
        <!--Кнопка купить-->
        <div class="idGood">
            <a href="process/BuyProduct.php?id=<?=$data['id']?>" ><img src="images/static_img/buy_button.png" width="130px"></a>
        </div>
        <div class="description">
            <?=$data["description"]?>
        </div>
        <!-- особенности товара -->
        <div class="features">
            <?foreach($data['features'] as $k=>$v){?>
                <span><img src="images/static_img/<?=$v["feature_img"]?>"  title="<?=$v["feature_name"]?>"></span>
            <?}?>
        </div>
    </div>
<?}?>
</div>
