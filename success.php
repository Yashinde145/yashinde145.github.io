<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>YTbanking</title>
  <meta content="" name="descriptison">
  <meta content="" name="keywords">


  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Montserrat:300,400,500,600,700" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="assets/vendor/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
</head>

<body style="background: #f5f8fd;">

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top header-transparent">
    <div class="container d-flex align-items-center">

      <h1 class="logo mr-auto"><a href="index.php">YTBanking</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav class="main-nav d-none d-lg-block">
        <ul>
          <li class="active"><a href="index.php">Home</a></li>
          <li><a href="customer.php">View All Customers</a></li>
          <li><a href="history.php">View Transaction History</a></li>
        </ul>
      </nav><!-- .main-nav-->

    </div>
  </header><!-- End Header -->
	<?php include 'connection.php' ?>
	
	<?php 
		$sender_name = $_GET["senderName"];
		$receiver_name = $_GET["recieverName"];
		$amount = $_GET["amountTosend"];
		$receiverId = $_GET["recieverId"];
		$senderId = $_GET["senderId"];

		
		$sql ="INSERT INTO `history`(`senderName`, `receiverName`, `amount`) VALUES ('$sender_name','$receiver_name',$amount)";
		$result = mysqli_query($conn, $sql);

		$sqlforsender = "UPDATE customers SET balance=balance-$amount WHERE id='$senderId'";
		$resultforsender =mysqli_query($conn, $sqlforsender);
		$sqlforreciever= "UPDATE customers SET balance=balance+$amount WHERE id='$receiverId' ";
		$resultforreciver =mysqli_query($conn, $sqlforreciever);

	?>
	<div style="margin-top:200px;text-align:center;color:green;">
	 <h2>Congratulations!! Transfer to <?php echo $receiver_name ?> successful</h2>
	</div>
	<script>
	setTimeout(function(){
            window.location.href = 'index.php';
         }, 5000);
	 //location.href = "index.php";
	</script>
</body>
</html>