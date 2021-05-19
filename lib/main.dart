import 'package:flutter/material.dart';
import 'package:tutor_nest/screens/common/choose_role_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TutorNest',
      theme: ThemeData(
      ),
      home: ChooseRoleScreen(),
    );
  }
}
