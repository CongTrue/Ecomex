<?php include '../../Dungchung/dbcon.php';
      include "taskbar.php";
      include "navigation.php";
?>
<div class="" >
  <div class="container-xxl flex-grow-1 container-p-y"  >
		<div class="row " >
			<div class="col-lg-6 col-md-6 col-12 mx-auto">
      <div class="card mb-3">
				<div class="card-header text-center">
			<strong>NHẬP MÃ ĐƠN HÀNG VÀ TẢI TỆP LÊN HỆ THỐNG</strong>
				<form method="post" enctype="multipart/form-data">
					<?php
						// If submit button is clicked
						if (isset($_POST['submit']))
						{
						// get name from the form when submitted
						$name = $_POST['name'];					

						if (isset($_FILES['pdf_file']['name']))
						{
						// If the ‘pdf_file’ field has an attachment
							$file_name = $_FILES['pdf_file']['name'];
							$file_tmp = $_FILES['pdf_file']['tmp_name'];
							
							// Move the uploaded pdf file into the pdf folder
							move_uploaded_file($file_tmp,"../../pdf/".$file_name);
							// Insert the submitted data from the form into the table
							$insertquery =
							"INSERT INTO pdf_data(idOrder,filename) VALUES('$name','$file_name')";
							
							// Execute insert query
							$iquery = mysqli_query($con, $insertquery);	

								if ($iquery)
							{							
					?>											
								<div class=
								"alert alert-success alert-dismissible fade show text-center">
									<a class="close" data-dismiss="alert" aria-label="close">
									
									</a>
									<strong>Thành công!</strong> Tệp đã được tải lên hệ thống.
								</div>
								<?php
								}
								else
								{
								?>
								<div class=
								"alert alert-danger alert-dismissible fade show text-center">
									<a class="close" data-dismiss="alert" aria-label="close">
									×
									</a>
									<strong>Thất bại!</strong> Vui lòng thử lại!
								</div>
								<?php
								}
							}
							else
							{
							?>
								<div class=
								"alert alert-danger alert-dismissible fade show text-center">
								<a class="close" data-dismiss="alert" aria-label="close">
									×
								</a>
								<strong>Thất bại!</strong> Vui lòng upload tệp PDF!
								</div>
							<?php
							}// end if
						}// end if
					?>
					<div class="form-input py-2">
						<div class="form-group">
							<input type="text" class="form-control"
								placeholder="Nhập mã đơn hàng" name="name" required>
              <br>
						</div>								
						<div class="form-group">
							<input type="file" name="pdf_file"
								class="form-control" accept=".pdf" required/>
						</div>
						<div class="form-group">
              <br>
							<input type="submit"
								class="btn btn-info?" style="background-color: green; color:#fff" name="submit" value="Tải lên">
						</div>
					</div>
				</form>
			</div>	
    </div>
  </div>	
  </div>
</div>
<?php 
  include "../../Dungchung/js.php";
?>
