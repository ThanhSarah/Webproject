<?php 
  session_start();
  error_reporting(0);
  include "includes/dbconnection.php";
  
?>
<!doctype html>
<html lang="en">

<head>
    <title>Sandal</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="css/style-index.css">
    <link rel="shortcut icon" type="image/png" href="image-page/logo2.PNG">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
    <?php 
    include "includes/top-header.php";
    include 'includes/header.php';
    ?>
    <hr>
    <div class="container">
    <?php
		$id_tin_tuc = $_GET["id"];

		$select1 = "SELECT * FROM `blog` ORDER BY id DESC";
        $result1=mysqli_query($con, $select1);

		while($row=mysqli_fetch_array($result1)){?>

	    <h3><?php echo $row["title"];?></h3>
	    <p><?php echo $row["description"];?></p>
	    <p style="text-align: center;"><img src="image-blog/<?php 
		if ($row["image"]<>"") {
			echo $row["image"];
		} else {
			echo "no_image.png";
		}
	;?>" width="650px" height="auto"></p>
	<p><?php echo $row["content"];?></p>
	<?php
		}
	;?>
    </div>
    <?php include 'includes/footer.php';?>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
    </script>
</body>

</html>