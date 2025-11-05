import 'package:flutter/material.dart';
import '../models/vocabulary.dart';

class VocabularyCard extends StatelessWidget {
  final Vocabulary vocabulary;

  const VocabularyCard({Key? key, required this.vocabulary}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 2,
      child: ListTile(
        title: Text('${vocabulary.korean} (${vocabulary.romanization})'),
        subtitle: Text(vocabulary.english),
      ),
    );
  }
}