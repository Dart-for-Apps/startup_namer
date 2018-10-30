import 'package:flutter/material.dart'; // material 디자인이 적용된 컴포너트 패키지

// part 1 수행을 위한 패키지 리스트
import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random(); // 아무 영단어 생성
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: new Center( // constant 를 제거 하기 위해 new 로 변경
          child: new Text(wordPair.asPascalCase), // PascalCase로 표기
        ),
      ),
    );
  }
}