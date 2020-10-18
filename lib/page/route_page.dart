/*
* Author : LiJiqqi
* Date : 2020/10/16
*/


import 'package:flutter/material.dart';
import 'package:flutterlistlab/page/position_list.dart';
import 'package:flutterlistlab/page/sliver_list.dart';

import 'normal_list.dart';


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
              SizedBox(
                height: 100,width: 1,
              ),

              RaisedButton(
                onPressed: (){
                  //todo
                  Navigator.of(context).push(new MaterialPageRoute(builder: (ctx)=>PositionListPage()));
                },
                child: Text('position list page'),
              ),
              SizedBox(
                height: 50,width: 1,
              ),

              RaisedButton(
                onPressed: (){
                  //todo
                  Navigator.of(context).push(new MaterialPageRoute(builder: (ctx)=>ListPage()));
                },
                child: Text('normal list page'),
              ),
              SizedBox(
                height: 50,width: 1,
              ),

              RaisedButton(
                onPressed: (){
                  //todo
                  Navigator.of(context).push(new MaterialPageRoute(builder: (ctx)=>SliverListPage()));
                },
                child: Text('sliver list page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




















