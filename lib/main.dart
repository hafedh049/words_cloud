import 'package:flutter/material.dart';
import 'package:words_cloud/words_count.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WordsCount(),
      theme: ThemeData.dark(),
    );
  }
}
