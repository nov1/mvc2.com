<!--    <div class='lside'>-->
<!--        <div class='menu_filter'>-->
<!--            <h4>Подбор по параметрам:</h4>-->
<!--            <hr>-->
<!--           
<!---->
<!---->
<!--            
<!--           
<!--                
<!--
<!--    <div class='content'>-->
<!--        <div class="sort">-->
<!--            <form action="" method="post" id='sort'>-->
<!--                Сортировка:-->
<!--                <select name="category" onchange="this.form.submit()">-->
<!--                    <option value="raiting" --><?//if($_POST['category'] == "raiting"){echo 'selected';}?><!-- >по рейтингу</option>-->
<!--                    <option value="cheap" --><?//if($_POST['category'] == "cheap"){echo 'selected';}?><!-- >от дешевых к дорогим</option>-->
<!--                    <option value="expensive" --><?//if($_POST['category'] == "expensive"){echo 'selected';}?><!-- >от дорогих к дешевым</option>-->
<!--                    <option value="new" --><?//if($_POST['category'] == "new"){echo 'selected';}?><!-- >новинки</option>-->
<!--                </select>-->
<!--            </form>-->
<!--        </div>-->

        <?
        foreach ($data as $key => $good){
            $good_id=$key; // айди товара
            ?>
            <div class="good" >
                <!-- видеообзор -->
                <div class="video">
                    <?if ($good["video"]){?>
                        <a href="<?=$good["video"]?>"><center><img src="images/static_img/video.jpg" title="Видеообзор" alt="Видеообзор" 	width="25px" /><br>video</center></a>
                    <?}?>
                </div>
                <!-- стикер -->
                <?switch ($good["sticker"]){
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
                <div class="<?=$class?>"><?=$good["sticker"]?></div>

                <!-- демо-видео -->
                <div class="demo">
                    <?
                    if ($good["demo"]) {?>
                        <a href="<?=$good["demo"]?>"><center><img src="images/static_img/demo.jpg" title="Демонстрация" alt="Демонстрация" width="25px" /><br>demo</center></a>
                    <?}?>
                </div>

                <!-- изображение товара -->
                <div class="imgGood">
                    <a href="?route=product&id=<?=$key?>"> <center><img src="images/<?=$good['images']["main_img_medium"];?>"
                       alt="<?=$good['images']["alt_img"]?>" title="<?=$good['images']["title_img"]?>"></center> </a>
                </div>

                <!-- цвета товара -->
                <div class="colorsGood">
                    <?foreach($good['colors'] as $k=>$v){?>
                    <a href="?route=product&id=<?=$key?>"><img src="images/static_img/<?=$v["target"]?>" class="colorChoise" alt="<?=$v["name"]?>"/></a><br>
                    <?}?>
                </div>

                <!-- наличие товара -->
                <div class="endingGood">
                    <?if ($good["in_stock"]) {?>
                        <center>Заканчивается</center>
                    <?}?>
                </div>

                <!-- название товара -->
                <div class="nameGood">
                    <a href="?route=product&id=<?=$key?>"><?=$good["name"]?></a>
                </div>

                <!-- старая цена товара -->
                <div class="oldPrice">
                    <?if ($good["old_price"]) {?>
                        <del><span><?=$good["old_price"]."<small>"?></span></del><?=" грн</small>"?>
                    <?}?>
                </div>

                <!-- актуальная цена товара -->
                <div class="PriceContainer">
                    <div class="price">
                        <?if ($good["price"]) {?>
                            <?=$good["price"]."<small> грн</small>"?>
                        <?}?>
                    </div>

                    <!-- рейтинг товара -->
                    <div class="raiting">
                        <i class="sprite sprite-<?=$good["raiting"]?>"></i>
                    </div>

                    <!-- отзывы -->
    <!--                --><?//$query="SELECT `id_comm`, `g_id`, `comm_description`, `plus`, `minus`
    //					  FROM `comments`
    //					  WHERE g_id=$g_id;";
    //                $res=mysqli_query($dbc, $query);
    //                $comments=[];
    //                while ($row = mysqli_fetch_assoc($res)){
    //                    $comments[]=$row;
    //                }
    //                $comments_count = count($comments);
                    $comments_count = 0; // времено
    //                ?>
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

                <div class="idGood">
                    <a href="process/BuyProduct.php?id=<?=$key?>"><img src="images/static_img/buy_button.png" width="130px"></a>
                </div>

                <!-- особенности товара -->
                <div class="features">
                    <span>
                        <?foreach($good['features'] as $k=>$v){?>
                    <img src="images/static_img/<?=$v["feature_img"]?>" title="<?=$v["feature_name"]?>">
                        <?}?>
                    </span>
                </div><br>

                <!-- описание товара -->
                <div class="description">
                    <?=$good["description"]?>
                </div>
            </div>

            <?
        }
        ?>
    </div>

