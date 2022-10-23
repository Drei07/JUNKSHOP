<?php
require_once 'admin-class.php';
$admin = new ADMIN();

if(empty($_GET['id']) && empty($_GET['code']))
{
 $admin->redirect('../../../public/admin/signin');
}

if(isset($_GET['id']) && isset($_GET['code']))
{
 $id = base64_decode($_GET['id']);
 $code = $_GET['code'];
 
 $stmt = $admin->runQuery("SELECT * FROM admin WHERE userId=:uid AND tokencode=:token");
 $stmt->execute(array(":uid"=>$id,":token"=>$code));
 $rows = $stmt->fetch(PDO::FETCH_ASSOC);
 
 if($stmt->rowCount() == 1)
 {
  if(isset($_POST['btn-update-password']))
  {
   $npass = $_POST['new-password'];
   
    $code = md5(uniqid(rand()));
    $npass = md5($npass);
    $stmt = $admin->runQuery("UPDATE admin SET adminPassword=:upass, tokencode=:token WHERE userId=:uid");
    $stmt->execute(array(":token"=>$code,":upass"=>$npass,":uid"=>$rows['userId']));
    
    $_SESSION['status_title'] = "Success !";
    $_SESSION['status'] = "Password is updated. Redirecting to Sign in.";
    $_SESSION['status_code'] = "success";
    header("refresh:4;../../../public/admin/signin");
   
  } 
 }
 else
 {
    $_SESSION['status_title'] = "Oops !";
    $_SESSION['status'] = "Your token is expired.";
    $_SESSION['status_code'] = "error";
 }
 
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="shortcut icon" href="../../../src/img/<?php echo $logo ?>">
	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="../../../src/css/login.css?v=<?php echo time(); ?>">

    <title>Superadmin | Reset Password</title>
</head>
<body>
<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-12 col-lg-10">
					<div class="wrap d-md-flex">
						<div class="img" style="background-image: url(../../../src/img/login-img.jpg);">
						</div>
						<div class="login-wrap p-4 p-md-5">
							<div class="d-flex">
								<div class="w-100">
									<h3 class="mb-4">Reset Password</h3>
								</div>
							</div>
							<form action="" method="POST"  class="signin-form">

								<div class="form-group mb-3" >
									<label class="label" for="password">Password</label>
									<input type="password" name="new-password" id="new-password" class="form-control" placeholder="Password" required>
								</div>

								<div class="form-group mb-3" style="opacity: 0;">
									<label class="label" for="name">Email</label>
									<input type="email" name="" class="form-control" placeholder="Enter email" >
								</div>
								<div class="form-group">
									<button type="submit" name="btn-update-password" class="form-control btn btn-primary rounded submit px-3">Reset Password</button>
								</div>

								<div class="form-group d-md-flex">
									<div class="w-50 text-left">
									</div>
									<div class="w-50 text-md-right">
										<a href="../../../">Back to Sign in</a>
									</div>
								</div>
							</form>
							<p class="text-center" style="opacity: 0;">Not a member? <a data-toggle="tab" href="#signup">Sign Up</a></p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="../../../src/vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="../../../src/vendor/bootstrap/js/popper.js"></script>
	<script src="../../../src/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="../../../src/js/main.js"></script>
	<script src="../../../src/node_modules/sweetalert/dist/sweetalert.min.js"></script>
	<script src="../../../src/node_modules/jquery/dist/jquery.min.js"></script>
	


	<script>


	</script>

<!-- SWEET ALERT -->
<?php

	if(isset($_SESSION['status']) && $_SESSION['status'] !='')
	{
		?>
		<script>
			swal({
			title: "<?php echo $_SESSION['status_title']; ?>",
			text: "<?php echo $_SESSION['status']; ?>",
			icon: "<?php echo $_SESSION['status_code']; ?>",
			button: false,
			timer: <?php echo $_SESSION['status_timer']; ?>,
			});
		</script>
		<?php
		unset($_SESSION['status']);
	}
?>
</body>
</html>