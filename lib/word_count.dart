import 'package:flutter/material.dart';
import 'package:word_cloud/word_cloud_data.dart';

class WordCount extends StatefulWidget {
  const WordCount({super.key});

  @override
  State<WordCount> createState() => _WordCountState();
}

class _WordCountState extends State<WordCount> {
  final List<Map<String, dynamic>> _data_list = <Map<String, dynamic>>[];
  late final WordCloudData _cloudData;

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
          WordCloudView(
            data: mydata,
            mapwidth: 500,
            mapheight: 500,
          )
        ],
      ),
    );
  }
}
