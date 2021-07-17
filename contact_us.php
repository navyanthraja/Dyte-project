<?php
	include "database.php";
	session_start();
 ?>
<?php include "header.php"; ?>
<!-- Slider images On -->
<div class="container_full slid_img">
	<div class="container">
		<h1 class="text text-center">School Management System</h1>
	</div>
</div>
<!-- Slider images Off -->
<!-- Login Section On -->
<div class="container_full loge_bk" style ='margin-top: 0px;'>

	<div class="container text-center pt-5 pb-5">
		<h2 class="heading"> Contact Us </h2>
		<div class="box">
<br>
<br>
						 <?php
							require_once('database.php');

							if(isset($_POST['submit'])){

							$tname = $_POST['username'];

							$email = $_POST['email'];
							$subject = $_POST['subject'];
							$message = $_POST['message'];



							$result = mysqli_query($db,"INSERT INTO contact (name, email, subject, message) VALUES('$tname','$email','$subject','$message')");
							if($result){
								echo "<p style='color: green'>Your Message Send Success..</p>";
							}else{
							echo "<p style='color:red'>Your Message not Send Some problem</p>";
							}

							}

						 ?>

<form method="POST" action="<?php echo $_SERVER['PHP_SELF'];?>">
	<div class="form-row">
		<div class="col">

	<input type="text" name="username" class="form-control mb-2" placeholder="Name">
	<input type="email" name="email" class="form-control mb-2" id="inputEmail4" placeholder="Email">
    <input type="text" name="subject" class="form-control mb-2" placeholder="Subject">
    <textarea  name="message" class="form-control mb-3" id="exampleFormControlTextarea1" rows="3" placeholder="Message*"></textarea>
	<button type="submit" class="btn btn-success" name="submit">Send</button>
		</div>
	</div>
</form>

	</div>
	</div>
</div>
<!-- Login Section Off -->
<div class="container_full loge_bk" style ='margin-top: 0px;'>

	<div class="container text-center pt-5 pb-5">
		<h2 class="heading"> Contact Us </h2>
		<div class="box">


			<h2>Contact Dreamvolt</h2>
			<br>
<h5>
				Email1: santosh@gmail.com <br>
			Email2: navyanth98@gmail.com<br>
			Email3: teja34@gmil.com <br>
			Subject:IWP
			</h5>


		</div>
	</div>
</div>
<!-- Login Section Off -->
<div class="container_full loge_bk" style ='margin-top: 0px;'>

	<div class="container text-center pt-5 pb-5">
		<h2 class="heading"> Contact Us </h2>
		<div class="box">
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3888.001614710973!2d79.15722781430435!3d12.971748218386043!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bad479f0ccbe067%3A0xfef222e5f36ecdeb!2sVellore%20Institute%20of%20Technology!5e0!3m2!1sen!2sin!4v1599721163100!5m2!1sen!2sin" width="100%" height="400px" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
		</div>
	</div>
</div>
