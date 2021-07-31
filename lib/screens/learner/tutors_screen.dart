import 'package:flutter/material.dart';
import 'package:tutor_nest/screens/learner/learner_post_question_screen.dart';

class TutorsScreen extends StatefulWidget {
  const TutorsScreen({Key key}) : super(key: key);

  @override
  _TutorsScreenState createState() => _TutorsScreenState();
}

class _TutorsScreenState extends State<TutorsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: _noTutors(context),
    ));
  }

  Widget _noTutors(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.3,
        child: Column(
          children: [
            Icon(
              Icons.cancel,
              color: Colors.redAccent,
              size: 70,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'No Tutors',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'You have not asked any question. \nYour asked questions will be shown here',
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LearnerPostQuestionScreen()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      return Colors.cyan; // Use the component's default.
                    },
                  ),
                ),
                child: Text('Ask Tutor a question;')),
          ],
        ),
      ),
    );
  }
}
