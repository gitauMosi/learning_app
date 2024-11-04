

import '../../models/course.dart';

import '../../models/message.dart';
import '../../models/onlinecourse.dart';
import '../../models/user.dart';

List<User> users = [
  User(
    id: "2",
    name: 'Bob Smith',
    email: 'bob@example.com',
    avatar: 'assets/images/u2.jpeg',
    isOnline: false,
  ),
  User(
    id: "3",
    name: 'Charlie Brown',
    email: 'charlie@example.com',
    avatar: 'assets/images/u3.jpeg',
    isOnline: true,
  ),
  User(
    id: "4",
    name: 'Diana Prince',
    email: 'diana@example.com',
    avatar: 'assets/images/u4.jpeg',
    isOnline: false,
  ),
  User(
    id: "5",
    name: 'Ethan Hunt',
    email: 'ethan@example.com',
    avatar: 'assets/images/u5.jpeg',
    isOnline: true,
  ),
  User(
    id: "6",
    name: 'Fiona Green',
    email: 'fiona@example.com',
    avatar: 'assets/images/u6.jpeg',
    isOnline: false,
  ),
  User(
    id: "7",
    name: 'George Martin',
    email: 'george@example.com',
    avatar: 'assets/images/u7.jpeg',
    isOnline: true,
  ),
  User(
    id: "8",
    name: 'Hannah Brown',
    email: 'hannah@example.com',
    avatar: 'assets/images/u4.jpeg',
    isOnline: true,
  ),
  User(
    id: "9",
    name: 'Ian Wright',
    email: 'ian@example.com',
    avatar: 'assets/images/u2.jpeg',
    isOnline: false,
  ),
  User(
    id: "10",
    name: 'Julia Roberts',
    email: 'julia@example.com',
    avatar: 'assets/images/u2.jpeg',
    isOnline: true,
  ),
];

List<Course> courses = [
  Course(name: "Science", chapters: 4, url: "assets/icons/science.png", duration: 27),
  Course(name: "Design", chapters: 5, url: "assets/icons/ux.png", duration: 30),
  Course(name: "Biology", chapters: 12, url: "assets/icons/biology.png", duration: 25),
  Course(name: "Cooking", chapters: 3, url: "assets/icons/cooking.png", duration: 18),
  Course(name: "Maths", chapters: 2, url: "assets/icons/math.png", duration: 10),
];


List<Message> messages = [
  Message(
    id: '1',
    senderId: 'user1',
    receiverId: 'user2',
    user: users[6],
    content: 'Hello!',
    timestamp: DateTime.now().subtract(const Duration(minutes: 5)),
    isRead: true,
  ),
  Message(
    id: '2',
    senderId: 'user2',
    receiverId: 'user1',
    user: users[1],
    content: 'Hi! How are you?',
    timestamp: DateTime.now().subtract(const Duration(minutes: 4)),
    isRead: false,
  ),
  Message(
    id: '3',
    senderId: 'user1',
    receiverId: 'user2',
    user: users[2],
    content: 'I am good, thanks!',
    timestamp: DateTime.now().subtract(const Duration(minutes: 3)),
    isRead: true,
  ),
  Message(
    id: '4',
    senderId: 'user2',
    receiverId: 'user1',
    user: users[3],
    content: 'What are you up to?',
    timestamp: DateTime.now().subtract(const Duration(minutes: 2)),
    isRead: false,
  ),
  Message(
    id: '5',
    senderId: 'user1',
    receiverId: 'user2',
    user: users[4],
    content: 'Just working on some projects.',
    timestamp: DateTime.now().subtract(const Duration(minutes: 1)),
    isRead: false,
  ),
  Message(
    id: '5',
    senderId: 'user1',
    receiverId: 'user2',
    user: users[4],
    content: 'Just working on some projects.',
    timestamp: DateTime.now().subtract(const Duration(minutes: 1)),
    isRead: false,
  ),
  Message(
    id: '5',
    senderId: 'user1',
    receiverId: 'user2',
    user: users[4],
    content: 'Just working on some projects.',
    timestamp: DateTime.now().subtract(const Duration(minutes: 1)),
    isRead: false,
  ),
];

List<OnlineCourse> onlinecoursesList = [
  OnlineCourse(
    id: '1',
    title: 'Flutter Development for Beginners',
    description: 'Learn the basics of Flutter and Dart to build mobile apps.',
    instructor: 'John Doe',
    duration: 300,
    rating: 4.8,
    lessons: [
      Lesson(
        title: 'Introduction to Flutter',
        videoUrl: 'https://example.com/flutter-intro',
        duration: 10,
        description: 'An introduction to Flutter framework.',
      ),
      Lesson(
        title: 'Setting up Flutter',
        videoUrl: 'https://example.com/setup',
        duration: 20,
        description: 'Setting up the development environment.',
      ),
    ],
    category: 'Mobile Development',
    releaseDate: DateTime(2023, 1, 5),
    isFree: true,
  ),
  OnlineCourse(
    id: '2',
    title: 'Advanced Dart Programming',
    description: 'Master Dart programming language for Flutter and beyond.',
    instructor: 'Jane Smith',
    duration: 420,
    rating: 4.9,
    lessons: [
      Lesson(
        title: 'Dart Basics',
        videoUrl: 'https://example.com/dart-basics',
        duration: 15,
        description: 'Introduction to Dart programming language.',
      ),
      Lesson(
        title: 'Dart Collections',
        videoUrl: 'https://example.com/dart-collections',
        duration: 25,
        description: 'Understanding lists, sets, and maps in Dart.',
      ),
    ],
    category: 'Programming',
    releaseDate: DateTime(2022, 9, 10),
  ),
  OnlineCourse(
    id: '3',
    title: 'Data Science with Python',
    description: 'Learn data science techniques and tools using Python.',
    instructor: 'Emily Brown',
    duration: 540,
    rating: 4.7,
    lessons: [
      Lesson(
        title: 'Introduction to Data Science',
        videoUrl: 'https://example.com/data-science-intro',
        duration: 30,
        description: 'Overview of data science field and its applications.',
      ),
      Lesson(
        title: 'Data Manipulation with Pandas',
        videoUrl: 'https://example.com/pandas',
        duration: 35,
        description: 'Data manipulation techniques using Pandas library.',
      ),
    ],
    category: 'Data Science',
    releaseDate: DateTime(2023, 4, 15),
    isFree: true,
  ),
  OnlineCourse(
    id: '4',
    title: 'Machine Learning A-Z',
    description: 'Comprehensive machine learning course with real-world examples.',
    instructor: 'Michael Clark',
    duration: 600,
    rating: 4.6,
    lessons: [
      Lesson(
        title: 'Introduction to Machine Learning',
        videoUrl: 'https://example.com/ml-intro',
        duration: 45,
        description: 'Machine learning basics and applications.',
      ),
      Lesson(
        title: 'Regression Analysis',
        videoUrl: 'https://example.com/regression',
        duration: 50,
        description: 'Learn about regression algorithms and their applications.',
      ),
    ],
    category: 'Machine Learning',
    releaseDate: DateTime(2023, 3, 20),
  ),
  OnlineCourse(
    id: '5',
    title: 'JavaScript for Beginners',
    description: 'A complete guide to learning JavaScript from scratch.',
    instructor: 'Sara White',
    duration: 280,
    rating: 4.5,
    lessons: [
      Lesson(
        title: 'Introduction to JavaScript',
        videoUrl: 'https://example.com/js-intro',
        duration: 20,
        description: 'JavaScript basics and usage.',
      ),
      Lesson(
        title: 'Functions in JavaScript',
        videoUrl: 'https://example.com/js-functions',
        duration: 30,
        description: 'Understanding functions in JavaScript.',
      ),
    ],
    category: 'Web Development',
    releaseDate: DateTime(2022, 7, 25),
    isFree: true,
  ),
  OnlineCourse(
    id: '6',
    title: 'React.js Essentials',
    description: 'Build interactive web applications using React.js.',
    instructor: 'Chris Green',
    duration: 360,
    rating: 4.8,
    lessons: [
      Lesson(
        title: 'React Basics',
        videoUrl: 'https://example.com/react-basics',
        duration: 25,
        description: 'Getting started with React.',
      ),
      Lesson(
        title: 'State Management in React',
        videoUrl: 'https://example.com/react-state',
        duration: 40,
        description: 'Understanding state and props in React.',
      ),
    ],
    category: 'Web Development',
    releaseDate: DateTime(2023, 6, 5),
  ),
  OnlineCourse(
    id: '7',
    title: 'UI/UX Design Fundamentals',
    description: 'Learn UI/UX design principles for creating user-friendly apps.',
    instructor: 'Alice Kim',
    duration: 400,
    rating: 4.7,
    lessons: [
      Lesson(
        title: 'Introduction to UI/UX',
        videoUrl: 'https://example.com/uiux-intro',
        duration: 30,
        description: 'Basics of UI and UX design.',
      ),
      Lesson(
        title: 'Designing for Mobile',
        videoUrl: 'https://example.com/mobile-design',
        duration: 45,
        description: 'Creating effective mobile designs.',
      ),
    ],
    category: 'Design',
    releaseDate: DateTime(2023, 2, 12),
    isFree: false,
  ),
  // More course instances following the same structure up to 20 items
];

void addCourses(){

for(int i = 8; i <= 20; i++) {
  onlinecoursesList.add(
    OnlineCourse(
      id: i.toString(),
      title: 'Sample Course $i',
      description: 'Description for course $i',
      instructor: 'Instructor $i',
      duration: 200 + i * 10,
      rating: 4.5 + (i % 5) * 0.1,
      lessons: [
        Lesson(
          title: 'Lesson 1 for Course $i',
          videoUrl: 'https://example.com/sample-course-$i-lesson-1',
          duration: 10 + i,
          description: 'Lesson 1 description for course $i',
        ),
        Lesson(
          title: 'Lesson 2 for Course $i',
          videoUrl: 'https://example.com/sample-course-$i-lesson-2',
          duration: 20 + i,
          description: 'Lesson 2 description for course $i',
        ),
      ],
      category: 'Sample Category $i',
      releaseDate: DateTime(2023, (i % 12) + 1, (i % 28) + 1),
      isFree: i % 2 == 0,
    ),
  );
}

}