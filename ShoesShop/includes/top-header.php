<div class="top">
    <div class="container">
        <div class="row">
            <?php  error_reporting(0);
            if(strlen($_SESSION['ulogin'])) { 
                 ?>
            <div class="top-right col-md-12">
                <ul class="top-right-menu">
                    <li><a href="introduce.php">Giới thiệu</a> </li>
                    <li><a href="sizeshoes.php">Cách đo size</a> </li>
                    <li>Giao hàng toàn quốc</li>
                    <li>Open: 7h00 - 22h00 (T2-CN)</li>
                    <li><a href="my-wishlist.php">Yêu thích <i class="fa fa-heart" aria-hidden="true"></i></a></li>
                </ul>

                <div class="top-right-in-out">
                    <span class="top-right-in">Xin chào: <?php echo $_SESSION['username'];?></span>
                    <span class="top-right-out"><a href="logout.php">Đăng xuất</a></span>
                </div>
            </div>
            <?php } else{ ?>
            <div class="top-left col-md-3">
                <span class="top-left-phone"><i class="fa fa-phone" aria-hidden="true"></i> 0965708150</span>
                <span class="top-left-email"><i class="fa fa-envelope-o" aria-hidden="true"></i> shoesshop.shop@gmail.com
                </span>
            </div>
            <div class="top-right col-md-9">
                <ul class="top-right-menu">
                    <li><a href="introduce.php">Giới thiệu</a> </li>
                    <li><a href="sizeshoes.php">Cách đo size</a> </li>
                    <li>Giao hàng toàn quốc</li>
                    <li>Open: 7h00 - 22h00 (T2-CN)</li>
                </ul>
                <div class="top-right-in-out">
                    <span class="top-right-in"><a href="login.php">Đăng nhập</a>
                    </span>
                    <span class="top-right-out"><a href="signup.php">Đăng ký</a> </span>
                </div>
            </div>
        </div>
    </div>
    <?php }?>
</div>
</div>
</div>