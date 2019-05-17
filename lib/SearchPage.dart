import 'package:flutter/material.dart';
import 'helpers/Constants.dart';
import 'package:http/http.dart' as http;

 class SearchPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _SearchPageState();
  }

 }
 
class _SearchPageState extends State<SearchPage> {

  makeRequest(url) async {
    var response = await http.get(url);
    if(response.statusCode == 200) {
      print(response.body);
      Navigator.of(context).pushNamed(loginPageTag);
    }
  }

  final _queryFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final queryField = TextFormField(
      controller: _queryFieldController,
      autofocus: true,
      decoration: InputDecoration(
        hintText: queryFieldHintText,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: UnderlineInputBorder(),
          hintStyle: TextStyle(
              color: Colors.white
          )
      ),
      style: TextStyle(
        color: Colors.white,
        fontSize: 24
      ),
    );

    final searchButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          makeRequest('http://ws.audioscrobbler.com/2.0/?method=artist.getinfo&artist=' + _queryFieldController.text + '&api_key=20527d54e1fdce78af390cd0078820f1&format=json');
        },
        padding: EdgeInsets.all(12),
        color: appGreyColor,
        child: Text(searchButtonText, style: TextStyle(color: Colors.white, fontSize: 18)),
      ),
    );

    return Scaffold(
      backgroundColor: appDarkGreyColor,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            queryField,
            searchButton
          ],
        ),
      ),
    );
    
  }


  }
