// Q10: AttendanceMixin
import 'part3-inheritance.dart';
import 'part4-interfaces.dart';

mixin AttendanceMixin {
  int _attendanceCount = 0;
  
  void markAttendance() {
    _attendanceCount++;
    print('Attendance marked!');
  }
  
  int getAttendance() {
    return _attendanceCount;
  }
  
  void resetAttendance() {
    _attendanceCount = 0;
    print('Attendance reset to 0');
  }
}


// Q11: Updated Student class with mixin

class Student extends Person with AttendanceMixin implements Registrable {
  int age;
  List<String> registeredCourses = [];
  
  Student(String name, this.age) : super(name);
  
  @override
  void introduce() {
    super.introduce();
    print('I am $age years old and I am a student');
  }
  
  @override
  void registerCourse(String courseName) {
    registeredCourses.add(courseName);
    print('$name has registered for: $courseName');
  }
}

void main() {
  Student student4 = Student('Diana Prince', 16);
  
  print('Attendance Tracking:');
  student4.markAttendance();
  student4.markAttendance();
  student4.markAttendance();
  
  print('Total attendance: ${student4.getAttendance()}');
}