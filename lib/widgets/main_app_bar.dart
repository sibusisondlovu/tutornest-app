
import 'package:flutter/material.dart';
import 'package:tutor_nest/shared/constants.dart';

import 'user_profile_header_widget.dart';

class MainAppBar extends StatefulWidget implements PreferredSizeWidget {

  Color themeColor;
  bool showProfilePic;

  MainAppBar({
    this.themeColor = Constants.primaryColor,
    this.showProfilePic = true
  });

  @override
  MainAppBarState createState() => MainAppBarState();

  @override
  Size get preferredSize => new Size.fromHeight(60);
}

class MainAppBarState extends State<MainAppBar> {

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading:UserProfileHeader(
        showProfilePic: widget.showProfilePic,
      ) ,
      title: Center(
        child: Image.asset('assets/images/icons/main_bar_logo.png',
            height: 35
        ),
      ),
      backgroundColor: Constants.primaryColor,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.white),
      actions: [
        Icon(Icons.notification_important)
      ],
    );
  }
}