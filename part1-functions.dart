// Q1: welcomeMessage function
void welcomeMessage() {
  print('=========================================');
  print('||   WELCOME TO DART SCHOOL SYSTEM.     ||');
  print('=========================================');
}

// Q2: createStudent function with named parameters
void createStudent({required String name, required int age}) {
  print('Student Created Successfully!');
  print('Name: $name');
  print('Age: $age');
  print('Status: Registered');
  print('-' * 40);
}

// Q3: createTeacher function with optional parameter
void createTeacher(String name, [String? subject]) {
  print('👨‍🏫 Teacher Profile');
  print('Name: $name');
  
  if (subject != null && subject.isNotEmpty) {
    print('Subject: $subject');
  } else {
    print('Subject: Subject not assigned');
  }
  print('-' * 40);
}

void main(){
    // Testing welcomeMessage
    welcomeMessage();
    
    // Testing createStudent with named parameters
    createStudent(name: 'Alice', age: 20);
    
    // Testing createTeacher with and without subject
    createTeacher('Mr. Smith', 'Mathematics');
    createTeacher('Ms. Johnson');
}