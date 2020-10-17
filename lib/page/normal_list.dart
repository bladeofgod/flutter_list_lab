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
    final size = MediaQuery.of(context).size;
    return Material(
      child: Container(
        width: size.width,height: size.height,
        color: Colors.white,
        child: ListView.builder(
          itemCount: 200,
            itemBuilder: (ctx,index){
            //log("${ctx.size}  --- $index");
            WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
              log("${ctx.findRenderObject().paintBounds}  --- $index");
            });
          ///item 高度为250，默认缓存高度是250
            ///当前手机来讲，第一次初始化时可以显示4个（大概3.3个），因为缓存的原因
            ///实际构造 0-4 即5个，多出的那一个缓存，同时缓存为头尾均有。
            ///因此，当我滚上方日至输出7时，即 总共显示了8个item，此时0号item已经回收，
            ///我们相会滚动，日志确实重新输出了index 0
          return Container(
            alignment: Alignment.center,
            width: size.width,height: 250,
            color: index%2 == 0 ? Colors.red:Colors.blueAccent,
            child: Text('$index',style: TextStyle(color: Colors.white,fontSize: 30),),
          );
        }),
      ),
    );
  }
  log(String info){
    debugPrint("build ---  $info");
  }
}