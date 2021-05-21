import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutor_nest/models/login_user_model.dart';
import 'package:tutor_nest/services/login_service.dart';

class UserProfileHeader extends StatelessWidget {

  bool showProfilePic;

  UserProfileHeader({
    this.showProfilePic
  });

  @override
  Widget build(BuildContext context) {

    LoginService _loginService = Provider.of<LoginService>(
        context,listen: false);
    LoginUserModel _userModel = _loginService.loggedInUserModel;

    String imagePath = _userModel !=null? _userModel.photoUrl : '';

    return this.showProfilePic && imagePath.length > 0 ?  Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(5),
      child: ClipOval(
        child: Image.network(imagePath),
      ),
    ): SizedBox(height: 40,width: 40,);
  }
}
