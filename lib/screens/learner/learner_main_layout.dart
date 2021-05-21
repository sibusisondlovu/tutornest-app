import 'package:flutter/material.dart';
import 'package:tutor_nest/screens/learner/learner_home_screen.dart';
import 'package:tutor_nest/shared/constants.dart';

class LearnerHomeLayout extends StatefulWidget {
  @override
  _LearnerHomeLayoutState createState() => _LearnerHomeLayoutState();
}

class _LearnerHomeLayoutState extends State<LearnerHomeLayout> {
  GlobalKey _bottomNavigationKey = GlobalKey();
  GlobalKey _postItemKey = GlobalKey();
  int _currentIndex = 1;


  final tabs = [
    LearnerHomeScreen(),
    LearnerHomeScreen(), //home screen, default landing
    LearnerHomeScreen(),
    LearnerHomeScreen(),
    LearnerHomeScreen()
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

//    WidgetsBinding.instance.addPostFrameCallback((_) =>
//        ShowCaseWidget.of(context).startShowCase([_postItemKey]));

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(int.parse(Constants.primaryColor)),
        title: Text(
          'Tutor Nest'
        ),
        actions: [
          Icon(Icons.notification_important)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        key: _bottomNavigationKey,
        backgroundColor: Color(int.parse(Constants.primaryColor)),
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.accessibility), label: 'Tutors'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Discussion'),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book_outlined), label: 'Library'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Me'),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: tabs[_currentIndex],
      ),);
  }

}
