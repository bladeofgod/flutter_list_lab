/*
* Author : LiJiqqi
* Date : 2020/10/16
*/


import 'package:flutter/material.dart';

class RoutePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return RoutePageState();
  }
}

class RoutePageState extends State<RoutePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              RaisedButton(
                onPressed: (){
                  //todo
                },
                child: Text('position list page'),
              ),
              SizedBox(
                height: 50,width: 1,
              ),

              RaisedButton(
                onPressed: (){
                  //todo
                },
                child: Text('normal list page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




















