<?PHP 
  include "taskbar.php";
  include "navigation.php";
  $conn = new mysqli("localhost","root","","Ecomex");
	// Check connection
	if ($conn->connect_errno) {
	  echo "Kết nối MYSQLi lỗi";
	  exit();
	}
  // $sql_lietke_taikhoanNV = "SELECT * FROM user ORDER BY thutu DESC";
  $sql_lietke_taikhoanNV = "SELECT * FROM user WHERE `quyen` = 2 OR `quyen` = 4";
	$query_lietke_taikhoanNV = mysqli_query($conn,$sql_lietke_taikhoanNV);
?>
  <div class="content-wrapper">
           <div class="container-xxl flex-grow-1 container-p-y">
            <div class="card">
                <h5 class="card-header">Danh sách nhân viên</h5>
                <div class="table-responsive text-nowrap">
                  <table class="table" style="color: #000;" >
                    <thead>
                      <tr>
                        <th></th>
                        <th>Tên nhân viên</th>
                        <th>Tên tài khoản</th>
                        <th>Ảnh đại diện</th>
                        <th>Số điện thoại</th>
                        <th>Email</th>
                        <th></th>
                      </tr>
                      <?php
                    $i = 0;
                    while($row = mysqli_fetch_array($query_lietke_taikhoanNV)){
                      $i++;
                    ?>
                    </thead>
                    <tbody>
                      <tr>
                        <td><?php echo $i ?></td>
                        <td><a href="list-staff.php?name_user=<?php echo $row['name'] ?>"><?php echo $row['name'] ?></a></td>
                        <td><?php echo $row['username'] ?></td>
                        <td><img src="<?php echo $row['avatar'] ?>" alt="" style="width: 100px"></td>
                        <td><?php echo $row['phone'] ?></td>
                        <td><?php echo $row['email'] ?></td>
                      </tr> 
                      <?php
                      } 
                      ?>
                    </tbody>
                  </table>
                </div>
              </div>
              <!--/ Borderless Table -->
            </div>
            <!-- / Content -->
          </div>
          <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
      </div>

  </div>
<?php 
  include "../../Dungchung/js.php";
?>