import 'package:flutter/material.dart';
import '../models/lesson.dart';
import '../widgets/vocabulary_card.dart';

class LessonScreen extends StatelessWidget {
  static const String routeName = '/lesson';

  final Lesson lesson;

  const LessonScreen({Key? key, required this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final vocabList = lesson.vocabList;
    return Scaffold(
      appBar: AppBar(
        title: Text(lesson.title),
      ),
      body: ListView.builder(
        itemCount: vocabList.length,
        itemBuilder: (context, index) {
          final vocab = vocabList[index];
          return VocabularyCard(vocabulary: vocab);
        },
      ),
    );
  }
}