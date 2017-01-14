<?
class Lib
{
	static function clearRequest($req)
	{
		return trim(strip_tags(htmlspecialchars($req)));
	}

	static function mysqli_fetch_all_my($rows, $id = null)
	{
		$arr = [];
		while ($row = mysqli_fetch_assoc($rows)) {
			$index = $row['id']; //индекс товара в массиве 24 , 25 , 29  [ [24]=>[id=>24, name=>samsung], [25]=>]
			$arr[] = $row;
		}
		return $arr;
	}

	static function get_goods($rows)
	{
		$arr = [];
		while ($row = mysqli_fetch_assoc($rows)) {
			$index = $row['id']; //индекс товара в массиве 24 , 25 , 29  [ [24]=>[id=>24, name=>samsung], [25]=>]
			$arr[$index] = $row;
		}
		return $arr;
	}


}


?>