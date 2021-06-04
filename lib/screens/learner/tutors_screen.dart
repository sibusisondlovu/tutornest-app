import 'package:flutter/material.dart';

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
              'You have not added any tutors. \nTutors will be shown here',
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () async {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      return Colors.cyan; // Use the component's default.
                    },
                  ),
                ),
                child: Text('Find Tutor')),
          ],
        ),
      ),
    );
  }
}
