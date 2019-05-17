import 'package:flutter/material.dart';
import 'helpers/Constants.dart';
import 'LoginPage.dart';
import 'SearchPage.dart';

void main() => runApp(TodaysAlbumApp());

class TodaysAlbumApp extends StatelessWidget {

  final routes = <String, WidgetBuilder> {
    loginPageTag: (context) => LoginPage(),
    searchPageTag: (context) => SearchPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      theme: new ThemeData(
        primaryColor: appDarkGreyColor
        ),
        home: LoginPage(),
        routes: routes,
    );
  }

}