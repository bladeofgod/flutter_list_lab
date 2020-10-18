

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverListPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SliverListPageState();
  }

}

class SliverListPageState extends State<SliverListPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Material(
      child: Container(
        width: size.width,height: size.height,
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (ctx,index){
                  return Container(
                    alignment: Alignment.center,
                    width: size.width,height: 250,
                    color: index%2 == 0 ? Colors.red:Colors.blueAccent,
                    child: Text('$index',style: TextStyle(color: Colors.white,fontSize: 30),),
                  );
                },
                childCount: 200,
                addAutomaticKeepAlives: true,
                addRepaintBoundaries: true,
                addSemanticIndexes: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}





















