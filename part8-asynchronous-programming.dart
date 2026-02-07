import 'part1-functions.dart';
import 'part4-interfaces.dart';
import 'part6-collections.dart';
import 'part7-anonymous-and-arrow-functions.dart';
// Q16: Async function to load students
Future<List<Student>> loadStudents() async {
  print('Loading student data...');

  await Future.delayed(Duration(seconds: 2));
  
  print('Students loaded successfully!');
  
  return [
    Student('Sarah Connor', 18),
    Student('Tom Hanks', 17),
    Student('Uma Thurman', 16),
  ];
}


Future<void> main() async {
  print('DART SCHOOL MANAGEMENT SYSTEM');
  print('=' * 40);
  
    welcomeMessage();
    print('');

    createStudent(name: 'Alex Turner', age: 16);
    createTeacher('Dr. Jane Smith', 'Mathematics');
    createTeacher('Prof. John Doe');

    listOfObject();
    print('');
    mapWithStudentId();
    print('');
    anonymousFunction();
    print('');
    arrowFunction();
    print('');
  

  print('ASYNCHRONOUS DATA LOADING');
  print('=' * 40);
  
  final students = await loadStudents();
  print('Loaded ${students.length} students:');
  
  for (var student in students) {
    print('- ${student.name} (Age: ${student.age})');
  }
}