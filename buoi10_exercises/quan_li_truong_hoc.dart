class Person {
  int id;
  String name;
  int age;
  String gender;

  Person(this.id, this.name, this.age, this.gender);
}

class Student extends Person {
  int? grade;
  List<double> scores;

  Student(int id, String name, int age, String gender, this.grade, this.scores)
    : super(id, name, age, gender);

  double diemTrungBinh() {
    if (scores.isEmpty) return 0;
    return scores.reduce((a, b) => a + b) / scores.length;
  }

  void hienThiSinhVien() {
    print(
      'ID: $id, Tên: $name, Tuổi: $age, Giới tính: $gender, Lớp: ${grade ?? "Chưa có lớp"}, Điểm: ${scores.join(', ')}, Điểm trung bình: ${diemTrungBinh().toStringAsFixed(2)}',
    );
  }
}

class Teacher extends Person {
  String subject;
  double salary;

  Teacher(
    int id,
    String name,
    int age,
    String gender,
    this.subject,
    this.salary,
  ) : super(id, name, age, gender);

  void hienThiGiaoVien() {
    print(
      'ID: $id, Tên: $name, Tuổi: $age, Giới tính: $gender, Môn dạy: $subject, Lương: $salary',
    );
  }
}

class Classroom {
  int id;
  String name;
  List<Student> students = [];
  Teacher? teacher;

  Classroom(this.id, this.name, this.students, this.teacher);

  void themGiaoVien(Teacher teacher) {
    this.teacher = teacher;
  }

  void themHocSinh(Student student) {
    students.add(student);
  }

  void hienThiThongTinLopHoc() {
    print('--- Thông tin lớp học ---');
    print('ID lớp: $id');
    print('Tên lớp: $name');

    print('\n--- Giáo viên chủ nhiệm ---');
    teacher == null ? print("Chưa có Giáo viên !") : teacher?.hienThiGiaoVien();

    print('\n--- Danh sách học sinh ---');
    if (students.isEmpty) {
      print("Chưa có danh sách học sinh !");
    } else {
      for (var i = 0; i < students.length; i++) {
        print('\nHọc sinh ${i + 1}:');
        students[i].hienThiSinhVien();
      }
    }
  }
}

void main(List<String> args) {
  // 1. Quản lý danh sách học sinh và giáo viên
  final hocSinh1 = Student(101, 'Nguyễn Văn A', 15, 'Nam', null, [
    8.5,
    9.0,
    7.5,
  ]);
  final hocSinh2 = Student(102, 'Trần Thị B', 16, 'Nữ', null, [9.0, 9.5, 8.5]);
  final hocSinh3 = Student(103, 'Lê Văn C', 15, 'Nam', null, [6.5, 7.0, 8.0]);
  List<Student> danhSachSinhVien = [hocSinh1, hocSinh2, hocSinh3];
  final giaoVien1 = Teacher(1, 'Cô Lan', 40, 'Nữ', 'Toán', 18000000);
  final giaoVien2 = Teacher(2, 'Thầy Hùng', 45, 'Nam', 'Lý', 19000000);
  List<Teacher> danhSachGiaoVien = [giaoVien1, giaoVien2];

  // 2. Tính điểm trung bình từng học sinh
  print("Danh sách sinh viên: \n");
  danhSachSinhVien.forEach((e)=>e.hienThiSinhVien());

  // 3. Gán giáo viên và học sinh vào lớp học
  Classroom lopHoc = Classroom(1, "12C7", [], null);

  lopHoc.themHocSinh(hocSinh1);
  lopHoc.themHocSinh(hocSinh3);
  lopHoc.themGiaoVien(giaoVien2);

  // 4. Hiển thị báo cáo danh sách lớp và điểm số.
  lopHoc.hienThiThongTinLopHoc();
}


