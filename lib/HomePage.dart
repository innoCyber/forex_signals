import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage>{

  void _logoutUser(){}

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:  new AppBar(
        title:  new Text('Home'),
        backgroundColor: Colors.lightBlue,
      ),

      body: new Container(),

      bottomNavigationBar:  new BottomAppBar(
        color: Colors.lightBlue,
        child:  new Container(

          margin: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,

            children: <Widget>[
              new IconButton(
                icon:  new Icon(Icons.money_off),
                iconSize: 40,
                color: Colors.white,
                  onPressed: null
              ),

              new IconButton(
                icon:  new Icon(Icons.whatshot),
                iconSize: 40,
                color: Colors.white,
                  onPressed: null
              ),


              new IconButton(
                icon:  new Icon(Icons.delete_forever),
                iconSize: 40,
                color: Colors.white,
                onPressed: _logoutUser,
              )
            ],
          ),
        ),
      ),
    );
  }
}