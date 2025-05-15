void main(List<String> args) {
  List<Map> danhSachSanPham = [];
  print("Thêm");
  themSanPham(danhSachSanPham, ["Iphone", 2, 1000]);
  print("Thêm");
  themSanPham(danhSachSanPham, ["Samsung", 4, 2000]);
  print("Thêm");
  themSanPham(danhSachSanPham, ["HuaWei", 5, 5000]);
  print("Sửa");
  suaSanPham(danhSachSanPham, 1, ["Oppo", 3, 1000]);
  print("Xoá");
  xoaSanPham(danhSachSanPham, 0);
  print("\nDanh sách sản phẩm");
  hienThiSanPham(danhSachSanPham);
  print("\nTổng tiền thanh toán: ${tongTienThanhToan(danhSachSanPham)}");
}

void themSanPham(var danhSachSanPham, var thongTinSanPham) {
  danhSachSanPham.add({
    "tenSanPham": thongTinSanPham[0],
    "soLuong": thongTinSanPham[1],
    "giaTien": thongTinSanPham[2],
  });
  print(danhSachSanPham);
}

void suaSanPham(var danhSachSanPham, var index, var thongTinSanPham) {
  var count = 0;
  danhSachSanPham[index].updateAll((key, value) {
    return value = thongTinSanPham[count++];
  });
  print(danhSachSanPham);
}

void xoaSanPham(var danhSachSanPham, var index) {
  danhSachSanPham.removeAt(index);
  print(danhSachSanPham);
}

void hienThiSanPham(var danhSachSanPham) {
  danhSachSanPham.forEach((e) => print(e));
}

double tongTienThanhToan(var danhSachSanPham) {
  double sum = 0;
  danhSachSanPham.forEach((e) {
    sum += e["soLuong"] * e["giaTien"];
  });
  return sum;
}
