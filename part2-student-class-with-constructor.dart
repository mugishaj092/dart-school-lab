// Q4: Student class with constructor
class Student {
  String name;
  int age;
  
  Student(this.name, this.age) {
    print('🎒 New Student object created for $name');
  }
}

// Q5: Creating and using Student object
void main() {
  Student student1 = Student('Alice Johnson', 16);
  
  print('Student Record:');
  print('Name: ${student1.name}');
  print('Age: ${student1.age}');
}

