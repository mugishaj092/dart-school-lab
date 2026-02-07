// Q8: Abstract class as interface
import 'part3-inheritance.dart';

abstract class Registrable {
  void registerCourse(String courseName);
}


// Q9: Student implements Registrable (Updated Student class)
class Student extends Person implements Registrable {
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
    print('Total courses: ${registeredCourses.length}');
  }
}

void main() {
  Student student3 = Student('Charlie Brown', 15);
  student3.registerCourse('Mathematics');
  student3.registerCourse('Computer Science');
}