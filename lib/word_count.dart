import 'package:flutter/material.dart';

class WordCount extends StatefulWidget {
  const WordCount({super.key});

  @override
  State<WordCount> createState() => _WordCountState();
}

class _WordCountState extends State<WordCount> {
  final WordCloudData mydata = WordCloudData(data: data_list);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
