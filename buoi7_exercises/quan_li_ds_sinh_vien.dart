import 'dart:io';

void main(List<String> args) {
  var input = "";
  var danhSachSinhVien = [];
  var maxDTB = 0.0;
  while (input != "N") {
    print("Thêm sinh viên vào danh sách(Y/N): ");
    input = stdin.readLineSync().toString();
    if (input != "Y" && input != "N") {
      print("\nBạn phải nhập 'Y' hoặc 'N'");
      continue;
    }
    if (input == "Y") {
      print("\nNhập họ tên: ");
      var hoTen = stdin.readLineSync().toString();
      late var diemToan, diemLy, diemHoa;

      do {
        print("\nĐiểm Toán phải là số !");
        print("Nhập điểm Toán: ");
        diemToan = stdin.readLineSync();
      } while (int.tryParse(diemToan)==null);
      do {
        print("\nĐiểm Lý phải là số !");
        print("Nhập điểm Lý: ");
        diemLy = stdin.readLineSync();
      } while (int.tryParse(diemLy)==null);
      do {
        print("\nĐiểm Hoá phải là số !");
        print("Nhập điểm Hoá: ");
        diemHoa = stdin.readLineSync();
      } while (int.tryParse(diemHoa)==null);

      diemToan=int.parse(diemToan);
      diemLy=int.parse(diemLy);
      diemHoa=int.parse(diemHoa);
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
