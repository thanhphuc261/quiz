import 'package:flutter/material.dart';
import 'package:quizzy/data/question.dart';
import 'package:html_unescape/html_unescape.dart';

class CheckAnswersScreen extends StatelessWidget {
  final Map<int, dynamic> answers;

  const CheckAnswersScreen(this.answers);

  @override
  Widget build(BuildContext context) {
    final List<Question> questions = questionsData;
    return Scaffold(
      appBar: AppBar(
        title: Text('Check Answer'),
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: questions.length + 1,
        itemBuilder: _buildItem,
      ),
    );
  }

  Widget _buildItem(BuildContext context, int index) {
    final List<Question> questions = questionsData;

    if (index == questions.length) {
      return ElevatedButton(
        child: Text("Done"),
        onPressed: () {
          Navigator.of(context)
              .popUntil(ModalRoute.withName(Navigator.defaultRouteName));
        },
      );
    }
    Question question = questions[index];
    bool correct = question.answer == answers[index];
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              HtmlUnescape().convert(question.question),
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0),
            ),
            SizedBox(height: 5.0),
            Text(
              HtmlUnescape().convert("${answers[index]}"),
              style: TextStyle(
                  color: correct ? Colors.green : Colors.red,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5.0),
            correct
                ? Container()
                : Text.rich(
                    TextSpan(children: [
                      TextSpan(text: "Answer: "),
                      TextSpan(
                          text: HtmlUnescape().convert(question.answer),
                          style: TextStyle(fontWeight: FontWeight.w500))
                    ]),
                    style: TextStyle(fontSize: 16.0),
                  )
          ],
        ),
      ),
    );
  }
}
