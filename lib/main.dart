import 'package:flutter/material.dart'; // material 디자인이 적용된 컴포너트 패키지

// part 1 수행을 위한 패키지 리스트
import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: new Center( // constant 를 제거 하기 위해 new 로 변경
          child: new RandomWords(),
        ),
      ),
    );
  }
}

// Randomwords 클래스의 state를 관리할 State 클래스
class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    // State 클래스에 대한 초기화 이후 호출됨.
    final wordPair = new WordPair.random(); // 아무 영단어 생성
    return new Text(wordPair.asPascalCase); // PascalCase 로 리턴
  }
}

// State class 인스턴스를 생성하는데 사용되는 StatefulWidget 클래스
/* 
  StatefulWidget 클래스를 생성하면 자동적으로 createState() 메소드를 호출하게 된다. 
*/
class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => new RandomWordsState();
}