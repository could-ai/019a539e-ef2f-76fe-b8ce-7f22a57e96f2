import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/lesson_screen.dart';
import 'models/lesson.dart';

void main() {
  runApp(const KoreanLearningApp());
}

class KoreanLearningApp extends StatelessWidget {
  const KoreanLearningApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn Korean',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == LessonScreen.routeName) {
          final lesson = settings.arguments as Lesson;
          return MaterialPageRoute(
            builder: (context) => LessonScreen(lesson: lesson),
          );
        }
        return null;
      },
    );
  }
}