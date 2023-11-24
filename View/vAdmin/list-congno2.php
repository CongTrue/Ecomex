<?php 
  include "taskbar.php";
  include "navigation.php";
  include "../../Model/connect.php";
?>

<?php
  if(isset($_GET['name_user']) && $_GET['name_user'] != ""){
    $name_user = $_GET['name_user'];
  } else {
    die('Không tồn tại người dùng');
  }
?>

<?php 
  $order = new order();
  $count = $order->show_number_order_all($name_user);
  $congno = $order->show_congno($name_user);
?>

<div class="content-wrapper">
  <div class="container-xxl flex-grow-1 container-p-y">
    <div class="card">
      <h4 class="card-header">Thống kê công nợ: <span class="text-primary"> <?php echo $name_user ?></span></h4>
      <div class="table-responsive text-nowrap">
        <table class="table" style="color: #000;">
          <thead>
            <tr>
              <th>Tổng đơn hàng</th>
              <th>Tổng công nợ</th>
              <th>Chưa thanh toán</th>
              <th>Đã thanh toán</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td class="text-primary"><?php echo $count ?></td>
              <?php foreach($congno as $value): ?>
                <td class="text-primary"><?php echo $value['tong_tien'] ?></td>
                <td class="text-primary"><?php echo $value['chua_thanh_toan'] ?></td>
                <td class="text-primary"><?php echo $value['da_thanh_toan'] ?></td>
              <?php endforeach; ?>
            </tr>
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