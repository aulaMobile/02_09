import 'package:flutter/material.dart';

void main() {
  runApp(Quiz());
}

class Quiz extends StatelessWidget {
  const Quiz({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: quizPage(),
          ),
        ),
      ),
    );
  }
}

class quizPage extends StatefulWidget {
  const quizPage({ Key? key }) : super(key: key);

  @override
  _quizPageState createState() => _quizPageState();
}

class _quizPageState extends State<quizPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: 
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Aqui virá o texto da pergunta.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
             ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: Text('Verdadeiro', 
                style: TextStyle(
                  color: Colors.white, 
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                print('Verdadeiro foi pressionado.');
              },
            ),
          ),
        ),
        Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                child: Text(
                  'Falso',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {
                  print('Falso foi pressionado.');
                },
              ),
            ),
          ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
          children: [
            Icon(
              Icons.check,
              color: Colors.green,
            ),
            Icon(
              Icons.close,
              color: Colors.red,
            ),
          ],
          ),
        ),
      ],
    );
  }
}