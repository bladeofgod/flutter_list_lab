

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
                      ///内部indexToLayoutOffset 用于控制偏移量
                      ///第一个item indexToLayoutOffset的偏移量时0.0
                      ///以上相关 ：parentData.layoutOffset
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





















