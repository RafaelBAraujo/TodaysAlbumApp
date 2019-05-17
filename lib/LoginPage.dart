import 'package:flutter/material.dart';
import 'helpers/Constants.dart';

class LoginPage extends StatelessWidget {

  final _pinCodeController = TextEditingController();
  final _passwordFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final logo = CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: bigRadius,
        child: Image.asset('assets/images/flutter-logo-round.png'),
    );
 
     // 3b
    final usernameField = TextFormField(
      controller: _pinCodeController,
      keyboardType: TextInputType.phone,
      maxLength: 30,
      maxLines: 1,
      autofocus: true,
      decoration: InputDecoration(
          hintText: usernameFieldHintText,
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: UnderlineInputBorder(),
          hintStyle: TextStyle(
              color: Colors.white
          )
      ),
      style: TextStyle(
        color: Colors.white,
      ),
    );

    final passwordField = TextFormField(
      controller: _passwordFieldController,
      autocorrect: false,
      maxLength: 60,
      maxLines: 1,
      obscureText: true,
      decoration: InputDecoration(
        hintText: passwordFieldHintText,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: UnderlineInputBorder(),
          hintStyle: TextStyle(
              color: Colors.white
          )
      ),
      style: TextStyle(
        color: Colors.white,
      ),
      );
 
     // 3c
    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(searchPageTag);
        },
        padding: EdgeInsets.all(12),
        color: appGreyColor,
        child: Text(loginButtonText, style: TextStyle(color: Colors.white)),
      ),
    );
 
     // 3d
    return Scaffold(
      backgroundColor: appDarkGreyColor,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: bigRadius),
            usernameField,
            passwordField,
            SizedBox(height: buttonHeight),
            loginButton
          ],
        ),
      ),
    );
  }
}
 