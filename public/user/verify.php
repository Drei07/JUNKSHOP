<?php
include_once '../../dashboard/user/authentication/user-verify.php';
include_once '../../dashboard/superadmin/controller/select-settings-configuration-controller.php';

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="shortcut icon" href="../../src/img/<?php echo $logo ?>">
	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="../../src/css/login.css?v=<?php echo time(); ?>">

    <title>Verify Account?</title>
</head>
<body>
<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-12 col-lg-10">
					<div class="wrap d-md-flex">
						<div class="img" style="background-image: url(../../src/img/login-img.png);">
						</div>
						<div class="login-wrap p-4 p-md-5">
							<div class="d-flex">
								<div class="w-100">
									<h3 class="mb-4">Verify Account?</h3>
								</div>
							</div>
							<form action=""   class="signin-form">

								<div>
									<?php if(isset($msg)) { echo $msg; } ?>
								</div>

								<div class="form-group mb-3"style="opacity: 0;">
									<label class="label" for="name">Email</label>
									<input type="email" name="email" class="form-control" placeholder="Enter email" required>
								</div>
								<div class="form-group mb-3" style="opacity: 0;">
									<label class="label" for="password">Password</label>
									<input type="password" name="password" class="form-control" placeholder="Password">
								</div>
								<div class="form-group" style="opacity: 0;">
									<button type="submit" name="btn-forgot-password" class="form-control btn btn-primary rounded submit px-3">Send</button>
								</div>
								<div class="form-group d-md-flex" style="opacity: 0;">
									<div class="w-50 text-left">
									</div>
									<div class="w-50 text-md-right">
										<a href="../../">Back to Sign in</a>
									</div>
								</div>
							</form>
							<p style="opacity: 0;" class="text-center">Not a member? <a data-toggle="tab" href="#signup">Sign Up</a></p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="../../src/vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="../../src/vendor/bootstrap/js/popper.js"></script>
	<script src="../../src/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="../../src/js/main.js"></script>
	<script src="../../src/node_modules/sweetalert/dist/sweetalert.min.js"></script>
	<script src="../../src/node_modules/jquery/dist/jquery.min.js"></script>
	


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