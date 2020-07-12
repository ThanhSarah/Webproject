<?php
session_start();
error_reporting(0);
include 'include/dbconnection.php';
if(strlen($_SESSION['alogin'])==0)
	{	
header('location:index.php');
}
else{     
?>
<!doctype html>
<html lang="en">

<head>
    <title>Admin|Manage Orders</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="css/welcome.css">
     <link rel="shortcut icon" type="image/png" href="../image-page/logo2.PNG">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
    <?php include "include/header.php" ?>

    <div class="container">
        <div class="row">
            <?php include 'include/sidebar.php';?>
            <div class="col-md-9">
                <div class="module-head">
                    <h3>Manage Orders</h3>
                </div>
                <div class="module-body table">
                    <br>
                    <table cellpadding="0" cellspacing="0" border="0"
                        class="datatable-1 table table-bordered table-striped	 display" width="100%">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Customer Name</th>
                                <th>Username</th>
                                <th>Date Order</th>
                                <th>payMent</th>
                                <th>Products</th>
                                <th>Total</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $query=mysqli_query($con,"SELECT products.name, users.fullname, users.username, orders.date_order, orders.payMent, orders.total, orders.status, order_details.quantity FROM (((order_detals JOIN orders ON orders.id=order_details.order_id) JOIN users ON orders.user_id=users.id) JOIN products ON order_detal.product_id=products.id) ");
                            $cnt=1;
                            while($row=mysqli_fetch_array($query))
                            {
                            ?>
                            <tr>
                                <td>
                                    <?php echo htmlentities($cnt);?>
                                </td>
                                <td>
                                    <?php echo htmlentities($row['fullname']);?>
                                </td>
                                <td>
                                    <?php echo htmlentities($row['username']);?>
                                </td>
                                <td>
                                <?php echo htmlentities($row['date_order']);?>
                                </td>
                                <td>
                                    <?php echo htmlentities($row['payMent']);?>
                                </td>
                                <td>
                                    <p>+</p>
                                    <?php echo htmlentities($row['name']);?>
                                    <p>:</p>
                                    <?php echo htmlentities($row['quantity']);?>
                                </td>
                                <td>
                                    <?php echo htmlentities($row['total']);?>
                                </td>
                                <td>
                                    <?php echo htmlentities($row['status']);?>
                                </td>
                            </tr>
                            <?php $cnt=$cnt+1; } ?>
                    </table>
                </div>
            </div>
        </div>
    </div>



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
<?php } ?>