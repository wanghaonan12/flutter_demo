import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

class SwitchListTitleWidget extends StatefulWidget {
  const SwitchListTitleWidget({Key? key}) : super(key: key);

  @override
  State<SwitchListTitleWidget> createState() => _SwitchListTitleWidgetState();
}

class _SwitchListTitleWidgetState extends State<SwitchListTitleWidget> {
  bool _selected =false;
  bool _dense =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SwitchListTitleWidget'),
      ),
      body:
      Container(
        padding:const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('切换列表组件',
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
                child: SwitchListTile(
                  value: _selected,
                  selected: _selected,
                  dense: _dense,
                  activeColor: Colors.orangeAccent,
                  secondary: Image.asset('images/avatar.png'),
                  title: const Text('走进flutter'),
                  subtitle: const Text('switchListTitle组件'),
                  activeThumbImage:
                  const AssetImage('images/avatar.png'),
                  inactiveThumbImage:  const AssetImage('images/avatar.png'),
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
