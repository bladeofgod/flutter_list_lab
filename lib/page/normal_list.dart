/*
* Author : LiJiqqi
* Date : 2020/10/16
*/


import 'package:flutter/material.dart';



class ListPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ListPageState();
  }

}

class ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text('list page'),
      ),
    );
  }
}