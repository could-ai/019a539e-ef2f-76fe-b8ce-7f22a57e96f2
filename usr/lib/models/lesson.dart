import 'vocabulary.dart';

class Lesson {
  final String title;
  final List<Vocabulary> vocabList;

  Lesson({
    required this.title,
    required this.vocabList,
  });

  static List<Lesson> sampleLessons = [
    Lesson(
      title: 'Greetings',
      vocabList: [
        Vocabulary(korean: '안녕하세요', romanization: 'annyeonghaseyo', english: 'Hello'),
        Vocabulary(korean: '안녕', romanization: 'annyeong', english: 'Hi'),
        Vocabulary(korean: '감사합니다', romanization: 'gamsahamnida', english: 'Thank you'),
      ],
    ),
    Lesson(
      title: 'Numbers',
      vocabList: [
        Vocabulary(korean: '일', romanization: 'il', english: 'One'),
        Vocabulary(korean: '이', romanization: 'i', english: 'Two'),
        Vocabulary(korean: '삼', romanization: 'sam', english: 'Three'),
      ],
    ),
    Lesson(
      title: 'Colors',
      vocabList: [
        Vocabulary(korean: '빨간색', romanization: 'ppalgansaek', english: 'Red'),
        Vocabulary(korean: '파란색', romanization: 'paransaek', english: 'Blue'),
        Vocabulary(korean: '초록색', romanization: 'choroksaek', english: 'Green'),
      ],
    ),
  ];
}