import 'package:flutter/material.dart';

class QuestionRequestScreen extends StatefulWidget {
  @override
  _QuestionRequestScreenState createState() => _QuestionRequestScreenState();
}

class _QuestionRequestScreenState extends State<QuestionRequestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Image.asset('assets/images/avatars/default.jpg'),
              Text('Nkosinamandla Mbuyisa'),
              Text('Grade 12'),
              Text('Question'),
              Text('')
            ],
          ),
        )
    );
  }
}
