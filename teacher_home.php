<?php
	include "database.php";
	session_start();

	$sql="SELECT * FROM staff WHERE TID={$_SESSION["TID"]}";
	$res=$db->query($sql);

	if($res->num_rows>0){
		$row=$res->fetch_assoc();
	}
 ?>
<?php include "teacher_header.php"; ?>
<!--end menu Section -->
<div class="container_full slid_img">
	<div class="container">
		<h1 class="text text-center">Welcome To School Management System <br> For Teacher</h1>
	</div>
</div>
<!-- Banar Section Off loge_bk bg-light -->

<div class="container_full loge_bk " style ='margin-top: 0px;'>

	<div class="container text-center">
		<div class="row" id="vir">
	<!-- Side bar Section On -->
	<?php include "tsidebar.php"; ?>

	<!-- Side bar Section end-->
			<div class="col-md-9">
				<h2 class="text-light">Welcome To Teacher</h2>
				<div class="row">
					<div class="col-4 fix">
						
						<br>
					</div>
					<div class="col-8 text-center rboxl">
						<h4><b class="text-info text-center border-b ">Profile Details</b></h4>

						<table border="1px" class="bg-light ml-4 m-2 p-4 form-control ">
							<tr>
								<th class="p-2"><b><?php echo $row["TNAME"] ?></b></th>
								<td class="p-2"><img colspan="2" src="<?php echo $row['IMG'] ?>" height="150" width="150" alt="Upload Pending"></td>


							</tr>
							<tr >
								<th class="p-2">Join Date</th>
								<td class="p-2"><?php echo $row["DATE"] ?></td>
							</tr>
							<tr>
								<th class="p-2">Qualification</th>
								<td class="p-2"><?php echo $row["QUAL"] ?></td>
							</tr>
							<tr>
								<th class="p-2">Salary</th>
								<td class="p-2"><?php echo $row["SAL"] ?></td>
							</tr>
							<tr>
								<th class="p-2">Phone No</th>
								<td class="p-2"><?php echo $row["PNO"] ?></td>

							</tr>
							<tr>
								<th class="p-2">E-Mail</th>
								<td class="p-2"><?php echo $row["MAIL"] ?></td>

							</tr>
							<tr>
								<th class="p-2">Address</th>
								<td class="p-2"><?php echo $row["PADDR"] ?></td>

							</tr>


						</table>
					</div>
				</div>

			</div>
		</div>

	</div>
</div>
<script type="text/javascript">
function validate(){
	
    var g=0;
	var email=document.getElementById("emil");
	var ind1=email.value.indexOf("@");
	var ind2=email.value.indexOf(".");
    if (ind1<0 || ind2<0)
	{
     window.alert("email should contain an '@' and '.' ");
    g=1;
	}
	if (g=1)
    {
        return false;
    }
    else{
        return true;
	}
}
</script> 
