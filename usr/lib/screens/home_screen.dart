import 'package:flutter/material.dart';
import '../models/lesson.dart';
import 'lesson_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  void _openLesson(BuildContext context, Lesson lesson) {
    Navigator.pushNamed(
      context,
      LessonScreen.routeName,
      arguments: lesson,
    );
  }

  @override
  Widget build(BuildContext context) {
    final lessons = Lesson.sampleLessons;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Korean'),
      ),
      body: ListView.builder(
        itemCount: lessons.length,
        itemBuilder: (context, index) {
          final lesson = lessons[index];
          return ListTile(
            title: Text(lesson.title),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () => _openLesson(context, lesson),
          );
        },
      ),
    );
  }
}