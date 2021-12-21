import 'package:flutter/material.dart';
import 'package:quizzy/data/question.dart';
import 'package:quizzy/screen/result/result_screen.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _currentIndex = 0;
  final Map<int, dynamic> _answers = {};

  @override
  Widget build(BuildContext context) {
    final question = questionsData[_currentIndex];

    return Scaffold(
      appBar: AppBar(
        title:
            Text("QUIZ", style: TextStyle(color: Colors.white, fontSize: 40)),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.deepPurple,
                  child: Text("${_currentIndex + 1}"),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: Text(question.question),
                )
              ],
            ),
            SizedBox(height: 20.0),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ...question.options.map(
                    (option) => RadioListTile(
                      title: Text(option),
                      value: option,
                      groupValue: _answers[_currentIndex],
                      onChanged: (value) {
                        setState(() {
                          _answers[_currentIndex] = option;
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton.icon(
                  onPressed: _handleNext,
                  label: Text('Next'),
                  icon: Icon(Icons.arrow_forward),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _handleNext() {
    if (_answers[_currentIndex] == null) {
      _showAlertDialog();
      return;
    }
    if (_currentIndex < (questionsData.length - 1)) {
      setState(() {
        _currentIndex++;
      });
    } else {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => QuizResultScreen(answers: _answers),
      ));
    }
  }

  void _showAlertDialog() {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Warning'),
        content: const Text('You must attempt all questions to continue'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}
