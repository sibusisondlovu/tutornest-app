import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:tutor_nest/widgets/main_app_bar.dart';

class LearnerProfileScreen extends StatefulWidget {
  const LearnerProfileScreen({Key key}) : super(key: key);

  @override
  _LearnerProfileScreenState createState() => _LearnerProfileScreenState();
}

class _LearnerProfileScreenState extends State<LearnerProfileScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildProfileHeader(context),
    );
  }

  Widget _buildProfileHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircularProfileAvatar(
        'https://i.pravatar.cc/300', //sets image path, it should be a URL string. default value is empty string, if path is empty it will display only initials
        radius: 100, // sets radius, default 50.0
        backgroundColor:
        Colors.transparent, // sets background color, default Colors.white
        borderWidth: 10, // sets border, default 0.0
        // sets initials text, set your own style, default Text('')
        borderColor: Colors.brown, // sets border color, default Colors.white
        elevation:
        5.0, // sets elevation (shadow of the profile picture), default value is 0.0
        foregroundColor: Colors.brown.withOpacity(
            0.5), //sets foreground colour, it works if showInitialTextAbovePicture = true , default Colors.transparent
        cacheImage: true, // allow widget to cache image against provided url
        onTap: () {

        }, // sets on tap
        showInitialTextAbovePicture:
        true, // setting it true will show initials text above profile picture, default false
      ),
    );
  }

}
