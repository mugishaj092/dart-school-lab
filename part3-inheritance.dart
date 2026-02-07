// Q6: Person class
import 'part2-student-class-with-constructor.dart';
class Person {
  String name;
  
  Person(this.name);
  
  void introduce() {
    print('Hello, my name is $name');
  }
}


// Q7: Student inherits from Person (Updated Student class)
class Student extends Person {
  int age;
  
  Student(String name, this.age) : super(name);
  
  @override
  void introduce() {
    super.introduce();
    print('I am $age years old and I am a student');
  }
}

// Demonstration
void main() {
  Student student2 = Student('Shema Paradise', 17);
  student2.introduce();
}