import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutor_nest/services/login_service.dart';
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
      body: Column(
        children: [
          _buildProfileHeader(context),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('My Subjects',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
              Container(
                padding: EdgeInsets.only(left: 8,right: 8,top: 2,bottom: 2),
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.pink[50],
                ),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.add,color: Colors.pink,size: 20,),
                    SizedBox(width: 2,),
                    Text("Add New",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                  ],
                ),
              )
            ],
          ),
          _buildSubjectsTile(context)
        ],
      ),
    );
  }

  Widget _buildProfileHeader(BuildContext context) {

    LoginService _loginService = Provider.of<LoginService>(
        context,
        listen: false
    );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircularProfileAvatar(
            _loginService.loggedInUserModel.photoUrl, //sets image path, it should be a URL string. default value is empty string, if path is empty it will display only initials
            radius: 50, // sets radius, default 50.0
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
          Text(_loginService.loggedInUserModel.displayName ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
          Text('0 TutorEggs',style: TextStyle(fontSize: 13)),
        ],
      ),
    );
  }

  Widget _buildSubjectsTile(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.plagiarism_outlined),
        title: Text('Mathematics'),
        trailing: Icon(Icons.delete_forever),
      ),
    );
  }

}
