import 'part4-interfaces.dart';
// Q14: Anonymous function to print student names
void anonymousFunction() {
  print('STUDENT NAMES USING ANONYMOUS FUNCTION');
  print('=' * 40);
  
  List<Student> students = [
    Student('Kelly Smith', 16),
    Student('Liam Jones', 17),
    Student('Mia Wong', 15),
  ];
  
  // Using anonymous function with forEach
  students.forEach((student) {
    print('🎓 ${student.name}');
  });
  
  // Alternative: Using anonymous function directly
  print('\nDetailed Information:');
  students.forEach((student) {
    print('Name: ${student.name} | Age: ${student.age} | Courses: ${student.registeredCourses.length}');
  });
}

// Q15: Arrow function for greeting
String greetStudent(String name) => 'Welcome to Dart School, $name!';

void arrowFunction() {
  print('🎯 DEMONSTRATING ARROW FUNCTIONS');
  print('=' * 40);
  
  // Using arrow function
  print(greetStudent('Noah Williams'));
  print(greetStudent('Olivia Martinez'));
  
  // Arrow function with list mapping
  List<String> names = ['Paul', 'Quinn', 'Rachel'];
  List<String> greetings = names.map((name) => greetStudent(name)).toList();
  
  print('\nGreetings:');
  greetings.forEach(print);
}

void main() {
  anonymousFunction();
  print('\n');
  arrowFunction();
}