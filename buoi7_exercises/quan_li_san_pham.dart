import 'dart:io';

void main(List<String> args) {
  List<Map<String, dynamic>> danhsachSanPham = [];
  var input = "";
  while (input != "N") {
    print("Thêm sản phẩm vào danh sách(Y/N): ");
    input = stdin.readLineSync().toString();
    if (input != "Y" && input != "N") {
      print("Bạn phải nhập 'Y' hoặc 'N'");
      continue;
    }
    if (input == "Y") {
      print("Nhập tên sản phẩm: ");
      var tenSanPham = stdin.readLineSync().toString();
      late var giaTien, soLuongTrongKho;

      do {
        print("\nGiá tiền phải là số !");
        print("Nhập giá tiền: ");
        giaTien = stdin.readLineSync();
      } while (int.tryParse(giaTien)==null);
      do {
        print("\nSố lượng trong kho phải là số !");
        print("Nhập số lượng trong kho: ");
        soLuongTrongKho = stdin.readLineSync();
      } while (int.tryParse(soLuongTrongKho)==null);

      giaTien=int.parse(giaTien);
      soLuongTrongKho=int.parse(soLuongTrongKho);

      danhsachSanPham.add({
        "ten": tenSanPham,
        "gia": giaTien,
        "soLuong": soLuongTrongKho,
      });
      print("Đã thêm sản phẩm vào danh sách");
      print(danhsachSanPham);
    } else {
      print("\nĐây là danh sách sản phẩm");
      print(danhsachSanPham);
      var inputtenSanPham = "";
      while (inputtenSanPham != "N") {
        var kiemTraSanPham = false;
        print(
          "\nNhập tên sản phẩm bạn muốn tìm kiếm(hoặc nhập 'N' để thoát tìm kiếm): ",
        );
        inputtenSanPham = stdin.readLineSync().toString();
        if (inputtenSanPham == "N") {
          break;
        }
        for (var i = 0; i < danhsachSanPham.length; i++) {
          if (danhsachSanPham[i]["ten"].toLowerCase().contains(
            inputtenSanPham.toLowerCase(),
          )) {
            print("\nĐã tìm thấy sản phẩm theo tên !");
            print(danhsachSanPham[i]);
            kiemTraSanPham = true;
            var kiemTraMuonBan = "";
            while (true) {
              print("\nBạn có muốn bán sản phẩm này không(Y/N) ?");
              kiemTraMuonBan = stdin.readLineSync().toString();
              if (kiemTraMuonBan != "Y" && kiemTraMuonBan != "N") {
                print("Bạn phải nhập 'Y' hoặc 'N'");
                continue;
              } else {
                break;
              }
            }
            if (kiemTraMuonBan == "Y") {
              print(danhsachSanPham[i]);
              print("\nNhập số lượng cần bán");
              var soLuongCanBan = int.parse(stdin.readLineSync().toString());
              if (danhsachSanPham[i]["soLuong"] > soLuongCanBan) {
                danhsachSanPham[i]["soLuong"] -= soLuongCanBan;
                print("\nĐã bán $soLuongCanBan");
                print(danhsachSanPham[i]);
              } else {
                print("\nKhông đủ số lượng hàng trong kho cần bán !");
              }
            } else {}
            break;
          }
        }
        if (kiemTraSanPham == false) {
          print("\nKhông tìm thấy sản phẩm nào !");
        }
      }
    }
  }
}
