import 'dart:io';

void main(List<String> args) {
  var input = "";
  var danhSachSinhVien = [];
  var maxDTB = 0.0;
  while (input != "N") {
    print("Thêm sinh viên vào danh sách(Y/N): ");
    input = stdin.readLineSync().toString();
    if (input != "Y" && input != "N") {
      print("Bạn phải nhập 'Y' hoặc 'N'");
      continue;
    }
    if (input == "Y") {
      print("Nhập họ tên: ");
      var hoTen = stdin.readLineSync().toString();
      print("Nhập điểm Toán: ");
      var diemToan = int.parse(stdin.readLineSync().toString());
      print("Nhập điểm Lý: ");
      var diemLy = int.parse(stdin.readLineSync().toString());
      print("Nhập điểm Hoá: ");
      var diemHoa = int.parse(stdin.readLineSync().toString());
      danhSachSinhVien.add([hoTen, diemToan, diemLy, diemHoa]);
      print("Đã thêm sinh viên vào danh sách");
      print(danhSachSinhVien);
    } else {
      if (danhSachSinhVien.length == 0) {
        print("Danh sách sinh viên rỗng");
      } else {
        print("Danh sách sinh viên: ");
        for (var sinhVien in danhSachSinhVien) {
          print(sinhVien);
          var dtb = (sinhVien[1] + sinhVien[2] + sinhVien[3]) / 3;
          if (dtb >= maxDTB) {
            maxDTB = dtb;
          }
          sinhVien.add(dtb);
          print("ĐTB: $dtb");
          print(
            "Xếp loại: ${dtb > 9
                ? "Xuất sắc"
                : dtb > 7 && dtb <= 9
                ? "Giỏi"
                : dtb > 5 && dtb <= 7
                ? "Khá"
                : "Kém"}",
          );
          print("\n");
        }
        print("Sinh viên có ĐTB cao nhất trong danh sách: ");
        for (var sinhVien in danhSachSinhVien) {
          if (sinhVien[4] == maxDTB) {
            print(sinhVien.sublist(0, 4));
            print("ĐTB: ${sinhVien[4]}");
          }
        }
      }
    }
  }
}
