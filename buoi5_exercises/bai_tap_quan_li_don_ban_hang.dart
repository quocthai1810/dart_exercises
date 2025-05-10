import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print("Nhập tên sản phẩm: ");
  var tenSanPham = stdin.readLineSync().toString();
  print("Nhập số lượng mua: ");
  var soLuongMua = int.parse(stdin.readLineSync().toString());
  print("Nhập đơn giá: ");
  var donGia = double.parse(stdin.readLineSync().toString());
  var thanhTien = soLuongMua * donGia;
  var giamGia = "0%";
  var thanhTienSauGiamGia = thanhTien;
  if (thanhTien >= pow(10, 6)) {
    thanhTienSauGiamGia-=thanhTien*1/10;
    giamGia = "10%";
  } else if (thanhTien >= 5 * pow(10, 5) &&
      thanhTien < pow(10, 6)) {
    thanhTienSauGiamGia-=thanhTien*1/20;
    giamGia = "5%";
  }
  var thueVat = thanhTienSauGiamGia*8/100;
  var tongThanhToanCuoiCung = thanhTienSauGiamGia-thueVat;
  print("----------HOÁ ĐƠN-----------\n");
  print("Tên sản phẩm: $tenSanPham");
  print("Số lượng mua: $soLuongMua");
  print("Đơn giá: $donGia");
  print("----------------------------");
  print("Thành tiền: $thanhTien");
  print("Giảm giá: $giamGia");
  print("Thành tiền sau giảm giá: $thanhTienSauGiamGia");
  print("Thuế VAT 8%: $thueVat");
  print("----------------------------");
  print("Tổng thanh toán cuối cùng: $tongThanhToanCuoiCung");
}
