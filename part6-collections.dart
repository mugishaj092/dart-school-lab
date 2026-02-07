import 'part4-interfaces.dart';
// Q12: List of Student objects
void listOfObject() {
  print('STUDENT ROSTER USING LIST');
  print('=' * 40);
  
  List<Student> students = [];
  
  // Adding students to list
  students.add(Student('Emma Watson', 17));
  students.add(Student('Frank Ocean', 16));
  students.add(Student('Grace Lee', 15));
  
  // Accessing list elements
  for (int i = 0; i < students.length; i++) {
    print('Student ${i + 1}: ${students[i].name}, Age: ${students[i].age}');
  }
  
  print('Total students: ${students.length}');
}


// Q13: Map with student ID as key
void mapWithStudentId() {
  print('STUDENT DIRECTORY USING MAP');
  print('=' * 40);
  
  Map<String, Student> studentDirectory = {};
  
  // Adding students to map with ID keys
  studentDirectory['S001'] = Student('Henry Ford', 18);
  studentDirectory['S002'] = Student('Ivy Chen', 17);
  studentDirectory['S003'] = Student('Jack Ryan', 16);
  
  // Iterating through map
  studentDirectory.forEach((id, student) {
    print('ID: $id → Name: ${student.name}, Age: ${student.age}');
  });
  
  print('Total records: ${studentDirectory.length}');
}

void main() {
  listOfObject();
  print('\n');
  mapWithStudentId();
}