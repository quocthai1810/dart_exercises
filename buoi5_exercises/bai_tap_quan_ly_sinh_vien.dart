import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print("Nhập họ tên: ");
  var hoTen = stdin.readLineSync().toString();
  print("Nhập số giờ làm việc: ");
  var soGioLamViec = int.parse(stdin.readLineSync().toString());
  print("Nhập lương mỗi giờ: ");
  var luongMoiGio = double.parse(stdin.readLineSync().toString());
  var tongLuongTruocThue = soGioLamViec * luongMoiGio;
  if (soGioLamViec > 40) {
    tongLuongTruocThue += tongLuongTruocThue * 1 / 5;
  }
  var mucThueThuThap = "0%";
  var thueThuThap = 0.0;
  var luongThucLanh = tongLuongTruocThue;
  if (tongLuongTruocThue > pow(10, 7)) {
    mucThueThuThap = "10%";
    thueThuThap = tongLuongTruocThue * 1 / 10;
    luongThucLanh -= thueThuThap;
  } else if (tongLuongTruocThue >= 7 * pow(10, 6) &&
      tongLuongTruocThue <= pow(10, 7)) {
        mucThueThuThap = "5%";
    thueThuThap = tongLuongTruocThue * 1 / 20;
    luongThucLanh -= thueThuThap;
  }
  print("Họ tên: $hoTen");
  print("Tổng lương trước thuế: $tongLuongTruocThue (${soGioLamViec>40?'Thêm phụ cấp 20% do làm hơn 40 giờ':'Không có phụ cấp do làm dưới 40 giờ'})");
  print("Mức thuế thu thập: $mucThueThuThap ($thueThuThap)");
  print("Lương thực lãnh: $luongThucLanh");
}
