<?php 
  error_reporting(0);
     include "include/dbconnection.php";
     session_start();
if(strlen($_SESSION['alogin'])==0)
	{	
header('location:index.php');
}
else{
//     $id=$_GET['id'];
    if (isset($_POST['submit'])) {
     
       $name=$_POST['proName'];
       $image= $_FILES['image']['name'];
       $desc=$_POST['desc'];
       $price=$_POST['price'];
       $quantity=$_POST['quantity'];
    //    $query=mysqli_query($con,"select category_id as cate_id from products");
    //    $result=mysqli_fetch_array($query);
    //    $cate_id=$result['cate_id'];
      
     move_uploaded_file($_FILES["image"]["tmp_name"],"../image-blog/".$_FILES["image"]["name"]);
     
    $insert= "INSERT INTO `blog`(`id`, `title`, `description`, `image`, `content`, `note`) VALUES (NULL,'".$name."','".$desc."','".$image."','".$price."','".$quantity."')"; 
    mysqli_query($con,$insert);
    $_SESSION['msg']="Product Inserted Successfully !!";
}
     
	
 

?>
<!doctype html>
<html lang="en">
  <head>
    <title>Admin|Insert Blog</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="css/welcome.css">
     <link rel="shortcut icon" type="image/png" href="../image-page/logo2.PNG">
  </head>
  <body>
     <?php include "include/header.php" ?>  
     <div class="right">  
     <div class="container ">        
        <div class="row " >
            <?php include "include/sidebar.php"?>
            <div class="col-xs-9 col-sm-9 col-md-9 col-lg-9 right"> 
                <h3>Insert blog</h3>
                <?php if(isset($_POST['submit'])){?>
                <div class="alert alert-success">
                    <button type="button" class="close" data-dismiss="alert">×</button>
                        <strong>Well done!</strong>	<?php echo htmlentities($_SESSION['msg']);?><?php echo htmlentities($_SESSION['msg']="");?>
                </div><?php } ?>            
                <form action="" method="POST" role="form" enctype="multipart/form-data">                
                    <div class="control-group">
                        <label class="control-lable" for="proName">Title</label>
                        <input type="text" class="control" name="proName" id="proName" value="" Required>
                    </div>
                    <div class="control-group">
                        <label class="control-lable" for="desc">Description</label>
                        <textarea type="text" class="control" name="desc" id="desc" value=""></textarea>
                    </div>
                    <div class="control-group">
                        <label class="control-lable" for="image">Image</label>
                        <input type="file" class="control" name='image'  value="" Required>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-lable" for="price">Content</label>
                        <textarea type="text" class="control" name ="price" id="price" value="" Required></textarea>
                    </div>
                    <div class="control-group">
                        <label class="control-lable" for="quantity">Note</label>
                        <input type="text" class="control" name="quantity" id="quantity" value="" Required>
                    </div>
                   
                    <button type="submit" name='submit' class="btn btn-primary update">Insert</button>
                </form>                
            </div>      
        </div>       
     </div>
     </div> 
      
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>
<?php } ?>