<?
class Controller_Basket extends Controller
{

	function __construct($db)
	{

		$this->model = new Model_Basket($db);
		$this->view = new View();
	}

	function action_index()
	{
		$id=$_GET["id"];
		$data = $this->model->get_data($id);
		$this->view->generate('basket_view.php', 'template_view.php', $data);
	}


}