import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutor_nest/screens/learner/learner_main_layout.dart';
import 'package:tutor_nest/services/login_service.dart';

class SignInLearnerScreen extends StatefulWidget {
  const SignInLearnerScreen({Key key}) : super(key: key);

  @override
  _SignInLearnerScreenState createState() => _SignInLearnerScreenState();
}

class _SignInLearnerScreenState extends State<SignInLearnerScreen> {
  
  @override
  Widget build(BuildContext context) {

    LoginService _loginService = Provider.of<LoginService>(
        context,
        listen: false
    );

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Image.asset('assets/images/backgrounds/sign_in_bg.jpg'),
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Choose sign in method'),
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: ElevatedButton(onPressed: () async {
                          bool success = await _loginService.signInWithGoogle();

                          if (success) {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(
                                    builder: (context) => LearnerHomeLayout()));
                          }
                        },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                                  return Colors.redAccent;// Use the component's default.
                                },
                              ),
                            ),
                            child: Text(
                                'Sign In With Google'
                            )),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: ElevatedButton(onPressed: (){},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                                  return Colors.blueAccent;// Use the component's default.
                                },
                              ),
                            ),
                            child: Text(
                                'Sign In With Facebook'
                            )),
                      ),
                      Text('Terms and conditions, privacy policy acknowledgement'),
                    ],
                  ),
                  Text('Don\'t have an account? Sign Up'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
