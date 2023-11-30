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
    <String, dynamic>{'word': 'Apple', 'value': 100.0},
    <String, dynamic>{'word': 'Samsung', 'value': 60.0},
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
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Text(
            'Clicked Word : ${wordstring}',
            style: TextStyle(fontSize: 20),
          ),
          Text('Clicked Count : ${count}', style: TextStyle(fontSize: 20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WordCloudTapView(
                data: wcdata,
                wordtap: wordtaps,
                mapcolor: Color.fromARGB(255, 174, 183, 235),
                mapwidth: 500,
                mapheight: 500,
                fontWeight: FontWeight.bold,
                shape: WordCloudCircle(radius: 250),
                colorlist: [Colors.black, Colors.redAccent, Colors.indigoAccent],
              ),
              SizedBox(
                height: 15,
                width: 30,
              ),
              WordCloudView(
                data: wcdata,
                mapcolor: Color.fromARGB(255, 174, 183, 235),
                mapwidth: 500,
                mapheight: 500,
                fontWeight: FontWeight.bold,
                colorlist: [Colors.black, Colors.redAccent, Colors.indigoAccent],
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
