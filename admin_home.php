<?php
	include "database.php";
	session_start();

	if(!isset($_SESSION["AID"])) {
		echo"<script> window.open('index.php?mes=Access Denied..','_self');</script>";
	}
 ?>

<?php include "admin_header.php"; ?>
<!-- Slider images Off -->

<div class="container_full d_back" style ='margin-top: 0px;'>

	<div class="container text-center">
		<div class="row" id="vir">
	<!-- Side bar Section On -->
			<?php include "sidebar.php"; ?>
	<!-- Side bar Section end-->
			<div class="col-md-9">
				<h2>Welcome Admin</h2>
				<div class="row">
					<div class="col-4 fix">
						<h4 ><b>School Information</b></h4>
						<img src="img/school.jpg" width="300px;" alt="">
					</div>
					<div class="col-8">
						<p>
							School Management System  is a complete school management software designed to automate a sechool's diverse operations form classes, exams to school events calendar. <br><br>

							This school software has a powerful online communitly to bring parents , teachers and students on a common interactive platform , It is a paperless office outomation solution for today's modern schools. The School Management System Provides the facility to carry out all day to day activities of the school.....
						</p>
					</div>
				</div>
				<p>
					This project aims at storing in an organized manner the data of a school related to
administration, faculty, students etc. Data we are going to store is like
attendance, salary of faculties, fees of students, other school events information
etc. Our main aim is to make this data easily accessible to a person and allow
him/her to add or edit data as per the requirement. As the name suggests, the
school management system database can be used to help improve the proper
management of the school. The school contains the staffs, teachers and the
students. It requires the savior of the information of staffs and students in a
well-organized way. When you go to the school offices there you might have
noticed a huge heap of files that would be bundled up and kept it somewhere in
the corner. It is in those files and folders where the information of the students
and the staffs will be stored. There is no security provided to this information
stored in these huge heaps of files.
				</p>
			</div>
		</div>

	</div>
</div>
<!-- Login Section Off -->

