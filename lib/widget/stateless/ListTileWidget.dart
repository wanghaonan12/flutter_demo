import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';


class ListTitleWidget extends StatefulWidget {
  const ListTitleWidget({Key? key}) : super(key: key);

  @override
  State<ListTitleWidget> createState() => _ListTitleWidget();
}

class _ListTitleWidget extends State<ListTitleWidget> {
  //是否密排
  bool _dense=false;

  //是否被选中
  bool _selected=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListTitle'),

      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('列表组件',
                style: titleStyle,),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  '只能用于Row,column和Flex布局中，可利用剩余空间进行占位，使用flex属性可一个多个spacer按比例分配空间。',
                  style: descStyle,
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.green.withAlpha(66),
                child: ListTile(
                  leading: Image.asset('images/avatar.png'),
                  selected: _selected,
                  dense: _dense,
                  title: const Text('走进flutter'),
                  subtitle: const Text('switchListTitle组件'),
                  selectedColor: Colors.deepOrange,
                  contentPadding: EdgeInsets.all(5),
                  trailing: Icon(Icons.more_vert),
                  onTap: ()=>setState(()=>{
                    _selected=!_selected,
                    _dense=!_dense,
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
