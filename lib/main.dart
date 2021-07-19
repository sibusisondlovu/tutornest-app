import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutor_nest/screens/common/choose_role_screen.dart';
import 'package:tutor_nest/screens/learner/learner_main_layout.dart';
import 'package:tutor_nest/screens/learner/learner_post_question_screen.dart';
import 'package:tutor_nest/services/login_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_)=> LoginService(),
      child: MaterialApp(
        title: 'Tutor Nest',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            fontFamily: 'Poppins'
        ),
        home: LearnerPostQuestionScreen(),
      ),
    );
  }
}
