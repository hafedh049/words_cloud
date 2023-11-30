import 'package:flutter/material.dart';
import 'package:word_cloud/word_cloud_data.dart';

class WordCount extends StatefulWidget {
  const WordCount({super.key});

  @override
  State<WordCount> createState() => _WordCountState();
}

class _WordCountState extends State<WordCount> {
  final List<Map<String, dynamic>> data_list = <Map<String, dynamic>>[];
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
