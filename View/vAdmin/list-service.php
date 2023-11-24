<?PHP 
  require_once "taskbar.php";
  require_once "navigation.php";
  require_once '../../Dungchung/request.php'; 
  require_once '../../Dungchung/dbcon.php';
  require_once "../../Model/order.php";
  include_once "../../Model/connect.php";
?>

          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">

    <!-- Responsive Table -->
    <div class="card">
      <h4 class="card-header">Danh sách đơn hàng của dịch vụ <?php echo $service ?></h4>
      <?php
                    if(isset($_GET['idOrder']) && $_GET['idOrder']!=""){
                    $idOrder = $_GET['idOrder'];
                    $delete_order = $order->delete_order($idOrder);
                  }
                ?>
                <?php
                  if(isset($delete_order)){
                    echo $delete_order;
                  }
                ?>
                <?php
                  // Số lượng đơn hàng hiển thị trên một trang
                  $per_page = 10;
                  // Tính tổng số đơn hàng
                  $count_query = "SELECT COUNT(id) AS total FROM oder Where `status` = 1 and `service` = '$service'";
                  $count_result = mysqli_query($conn, $count_query);
                  $count_row = mysqli_fetch_assoc($count_result);
                  $total_records = $count_row['total'];
                  // Tính toán tổng số trang
                  $total_pages = ceil($total_records / $per_page);

                  // Xác định trang hiện tại
                  if (!isset($_GET['page'])) {
                    $current_page = 1;
                  } else {
                    $current_page = $_GET['page'];
                  }
                  // Tính toán offset để xác định đơn hàng bắt đầu từ đâu trên trang hiện tại
                  $offset = ($current_page - 1) * $per_page;
                  // Lấy danh sách đơn hàng cho trang hiện tại
                  $service = $_GET['service']; // Lấy giá trị của tham số service từ URL
                  $show_order = $order->show_order_by_service($service,$offset,$per_page); // Truy vấn danh sách đơn hàng theo mã dịch vụ
                ?>
                <div class="table-responsive text-nowrap">
                  <table class="table" style="color: #000;">
                    <thead>
                      <tr class="text-nowrap">
                        <th></th>
                        <th>Mã đơn hàng</th>
                        <th>Khách hàng</th>
                        <th>Quốc gia</th>
                        <th>Dịch vụ</th>
                        <th>Thời gian tạo</th>
                        <th>Trạng thái</th>
                        <th>Thành tiền</th>
                        <th>Thanh toán</th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php 
                        if (mysqli_num_rows($show_order) > 0) {
                          $i = ($current_page - 1) * $per_page;
                          while ($result = mysqli_fetch_assoc($show_order)) {
                            $i++;
                      ?>
                        <tr>
                          <td><?php echo $i ?></td>
                          <td><a href="detail.php?idOrder=<?php echo $result['idOrder'] ?>"><?php echo $result['idOrder'] ?></a></td>
                          <td><span class="text-dark"><?php echo $result['name_user'] ?></span></td>
                          <td><span class="text-dark"><?php echo $result['country'] ?></span></td>
                          <td><span class="text-dark"><?php echo $result['service'] ?></span></td>
                          <td><span class="text-dark"><?php echo $result['time'] ?></span></td>
                          <td>
                            <?php 
                              if ($result['trangthai'] == 1) {
                                echo "<span class='badge bg-label-info me-1'>Đang vận chuyển</span>";
                              } elseif ($result['trangthai'] == 2) {
                                echo "<span class='badge bg-label-success me-1'>Đã hoàn thành</span>";
                              } elseif ($result['trangthai'] == 3) {
                                echo "<span class='badge bg-label-danger me-1'>Đơn rủi ro</span>";
                              } elseif ($result['trangthai'] == 4) {
                                echo "<span class='badge bg-label-secondary me-1'>Đơn đã hủy</span>";
                              }elseif ($result['trangthai'] == 5) {
                                echo "<span class='badge bg-label-info me-1'>Đang giao phát</span>";
                              }elseif ($result['trangthai'] == 6) {
                                echo "<span class='badge bg-label-warning me-1'>Tạo nhãn label</span>";
                              }elseif ($result['trangthai'] == 7) {
                                echo "<span class='badge bg-label-info me-1'>Đã nhập kho</span>";
                              }elseif ($result['trangthai'] == 8) {
                                echo "<span class='badge bg-label-info me-1'>Đã xuất kho</span>";
                              }else {
                                echo "<span class='badge bg-label-warning me-1'>Chưa xử lý</span>";
                              }
                            ?>
                          </td>
                          <td><span class="text-nowrap"><?php echo number_format($result['price']) ?> VNĐ</span></td>
                          <td><span class="text-dark"><?php if($result['payment']==1){
                            echo "<span class='badge bg-label-success me-1'>Đã thanh toán</span>";
                          }else{
                            echo "<span class='badge bg-label-warning me-1'>Chưa thanh toán</span>";
                          }
                           ?></span></td>
                        <td>
                          <div class="dropdown">
                            <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                              <i class="bx bx-dots-vertical-rounded"></i>
                            </button>
                            <div class="dropdown-menu">
                            <a class="dropdown-item" href="detail.php?idOrder=<?php echo $result['idOrder'] ?>"><i class="menu-icon tf-icons bx bx-detail"></i>Chi tiết</a>
                            <a class="dropdown-item" onclick="return confirm('Bạn có chắc chắn muốn xóa đơn hàng <?php echo $result['idOrder'] ?>?')" href="list-all-customer.php?idOrder=<?php echo $result['idOrder'] ?>"><i class="bx bx-trash me-1"></i> Xóa đơn hàng</a>
                            </div>
                          </div>
                        </td>
                        </tr>
                      <?php 
                          }
                        } else {
                          echo "<tr><td colspan='9'>Không có đơn hàng</td></tr>";
                        }
                      ?>
                    </tbody>
                  </table>
                </div>
                <?php
                  // Hiển thị phân trang
                  echo "<nav aria-label='Page navigation example'>";
                  echo "<ul class='pagination justify-content-center'>";
                  $start_page = max(1, $current_page - 10);
                  $end_page = min($total_pages, $current_page + 9);

                  for ($i = $start_page; $i <= $end_page; $i++) {
                    if ($i == $current_page) {
                      echo "<li class='page-item active'><a class='page-link' href='#'>".$i."</a></li>";
                    } else {
                      echo "<li class='page-item'><a class='page-link' href='list-service.php?page=".$i."'>".$i."</a></li>";
                    }
                  }
                  echo "</ul>";
                  echo "</nav>";
                  mysqli_close($conn);
                ?>
              </div>
              <!--/ Responsive Table -->
            </div>
            <!-- / Content -->

            <div class="content-backdrop fade"></div>
          </div>
          <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
      </div>

    </div>
    <!-- / Layout wrapper -->

<?php 
  include "../../Dungchung/js.php";
?>

