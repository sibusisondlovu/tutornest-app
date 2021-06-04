import 'package:flutter/material.dart';

class StudyGroupsScreen extends StatefulWidget {
  const StudyGroupsScreen({Key key}) : super(key: key);

  @override
  _StudyGroupsScreenState createState() => _StudyGroupsScreenState();
}

class _StudyGroupsScreenState extends State<StudyGroupsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _noGroups(context));

  }

  Widget _noGroups(BuildContext context) {
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
              'No Study Groups',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'You have not added any study groups. \nStudy groups will be shown here',
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
