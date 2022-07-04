import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';


  class CheckboxListTitleWidget extends StatefulWidget {
  const CheckboxListTitleWidget({Key? key}) : super(key: key);

  @override
  State<CheckboxListTitleWidget> createState() => _CheckboxListTitleWidgetState();
}

class _CheckboxListTitleWidgetState extends State<CheckboxListTitleWidget> {
  //是否密排
  bool _dense=false;

  //是否被选中
  bool _selected=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('checkBoxListTitle'),

      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('复选框组件',
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
              child: CheckboxListTile(
                value: _selected,
                selected: _selected,
                dense: _dense,
                activeColor: Colors.orangeAccent,
                secondary: Image.asset('images/avatar.png'),
                title: const Text('走进flutter'),
                subtitle: const Text('switchListTitle组件'),
                onChanged: (bool?value)=>setState(()=>{
                  _selected=!_selected,
                  _dense=!_dense,
                }),
              ),
            )

          ],
        ),
        ),
      ),
    );
  }
}
