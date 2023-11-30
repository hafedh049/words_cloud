import 'package:flutter/material.dart';
import 'package:word_cloud/word_cloud_data.dart';
import 'package:word_cloud/word_cloud_tap.dart';
import 'package:word_cloud/word_cloud_tap_view.dart';

class WordCount extends StatefulWidget {
  const WordCount({super.key});

  @override
  State<WordCount> createState() => _WordCountState();
}

class _WordCountState extends State<WordCount> {
  final List<Map<String, dynamic>> _data_list = <Map<String, dynamic>>[
    <String, dynamic>{'word': 'Apple', 'value': 100},
    <String, dynamic>{'word': 'Samsung', 'value': 60},
  ];
  late final WordCloudData _cloudData;
  final WordCloudTap _tap = WordCloudTap();

  @override
  void initState() {
    _cloudData = WordCloudData(data: _data_list);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: WordCloudTapView(
              wordtap: _tap,
              data: _cloudData,
              mapwidth: 500,
              mapheight: 500,
            ),
          )
        ],
      ),
    );
  }
}
