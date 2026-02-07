import 'part3-inheritance.dart';
import 'part4-interfaces.dart';

// Q19: NotificationMixin — prints a message when a student registers.
mixin NotificationMixin {
	void sendNotification(String message) {
		print('NOTIFICATION: $message');
		print('Sent at: ${DateTime.now()}');
	}

	void notifyCourseRegistration(String studentName, String courseName) {
		sendNotification('$studentName registered for $courseName');
	}
}

// Student applies NotificationMixin and implements Registrable
class Student extends Person with NotificationMixin implements Registrable {
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
		notifyCourseRegistration(name, courseName);
	}
}


void main() {
	print('Testing NotificationMixin');
	print('=' * 40);

	final s = Student('Ada Lovelace', 19);
	s.registerCourse('Intro to Algorithms');
	s.registerCourse('Discrete Mathematics');
}

