import 'dart:io';

class Person {
  var id;
  var name;
  var age;
  var gender;
  Person(this.id, this.name, this.age, this.gender);
}

class Student extends Person {
  var grade;
  var mathScore,physicScore,chemistryScore;

  Student(
    super.id,
    super.name,
    super.age,
    super.gender,
    this.grade,
    this.mathScore,
    this.physicScore,
    this.chemistryScore,
  );

  void hienThiSinhVien() {
    print(
      "Tên: $name, Tuổi: $age, Giới tính: $gender, Lớp: $grade, Điểm toán: $mathScore, lý: $physicScore, hoá: $chemistryScore",
    );
  }
}

class Teacher extends Person {
  var subject;
  var salary;

  Teacher(
    super.id,
    super.name,
    super.age,
    super.gender,
    this.subject,
    this.salary,
  );

  void hienThiGiaoVien() {
    print(
      "Tên: $name, Tuổi: $age, Giới tính: $gender, Môn dạy: $subject, Lương: $salary",
    );
  }
}

class Classroom {
  var id;
  var name;
  var students;
  var teacher;

  void themHocSinh(Student student) {
    
    students.add(student);
  }

  void themGiaoVien(Teacher teacher) {
    this.teacher = teacher;
  }

  void hienThiLopHoc() {
    print("Tên lớp: $name");
    print("Giáo viên phụ trách: ${teacher.name}");
    print("Danh sách học sinh");
    students.forEach((e)=>e.hienThiSinhVien());
  }
}
void main() {
  var classroom = Classroom();
  var students = [];
  var teacher;
  var choice;

  while (true) {
    print("\nMenu:");
    print("1. Quản lý danh sách học sinh và giáo viên");
    print("2. Tính điểm trung bình của từng học sinh");
    print("3. Gán giáo viên và học sinh vào lớp học");
    print("4. Hiển thị báo cáo danh sách lớp và điểm số");
    print("0. Thoát");
    print("Chọn chức năng(Nhập theo thứ tự từ 1 đến 4): ");
    choice = int.parse(stdin.readLineSync()!);

    if (choice == 0) break;

    switch (choice) {
      case 1:
        // Create 3 students
        var student1 = Student(1, "Nguyen Van A", 15, "Nam", "10A", 8.5, 7.0, 9.0);
        var student2 = Student(2, "Tran Thi B", 16, "Nu", "10A", 9.0, 8.5, 7.5);
        var student3 = Student(3, "Le Van C", 15, "Nam", "10A", 7.5, 8.0, 8.5);
        students.addAll([student1, student2, student3]);
        
        // Create 1 teacher
        teacher = Teacher(1, "Pham Van D", 35, "Nam", "Toan", 5000);
        
        print("Danh sách học sinh:");
        for (var student in students) {
          student.hienThiSinhVien();
        }
        print("Giáo viên:");
        teacher.hienThiGiaoVien();
        break;

      case 2:
        for (var student in students) {
          double avg = (student.mathScore + student.physicScore + student.chemistryScore) / 3;
          student.hienThiSinhVien();
          print("Điểm trung bình: $avg");
        }
        break;

      case 3:
        classroom.id = 1;
        classroom.name = "10A";
        classroom.students = students;
        classroom..themGiaoVien(teacher);
        print("Đã gán giáo viên và học sinh vào lớp 10A");
        break;

      case 4:
        classroom.hienThiLopHoc();
        for (var student in classroom.students) {
          double avg = (student.mathScore + student.physicScore + student.chemistryScore) / 3;
          print("Điểm trung bình của ${student.name}: $avg");
        }
        break;

      default:
        print("Chức năng không hợp lệ!");
    }
  }
}

