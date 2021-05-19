import 'package:flutter/material.dart';

import 'package:tutor_nest/screens/learner/learner_main_layout.dart';
import 'package:tutor_nest/shared/constants.dart';

class ChooseRoleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Stack(
          children: [
            Image.asset('assets/images/backgrounds/welcome_background.png'),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height:MediaQuery.of(context).size.height * 0.05,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset('assets/images/icons/tool_bar_icon.png',
                    width: MediaQuery.of(context).size.width * 0.35,),
                ),
                Column(
                  children: [
                    SizedBox(
                      width:MediaQuery.of(context).size.width * 0.60,
                      child: ElevatedButton(
                        style:ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                              return Colors.green;// Use the component's default.
                            },
                          ),),
                        onPressed: ()  {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LearnerHomeLayout()),
                          );
                        },
                        child: Text(
                          "I AM LEARNER".toUpperCase(),
                          style: TextStyle(
                            fontSize: 18.0,
                            letterSpacing: 1,
                          ),

                        ),
                      ),
                    ),
                    SizedBox(
                      width:MediaQuery.of(context).size.width * 0.60,
                      child: ElevatedButton(
                        style:ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                              return Colors.cyan;// Use the component's default.
                            },
                          ),),
                        onPressed: ()  {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => CaptureItemDetailsScreen()),
                          // );
                        },
                        child: Text(
                          "I AM TUTOR".toUpperCase(),
                          style: TextStyle(
                            fontSize: 18.0,
                            letterSpacing: 1,
                          ),

                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
