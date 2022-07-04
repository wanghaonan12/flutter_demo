import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

class SpacerWidefe extends StatefulWidget {
  const SpacerWidefe({Key? key}) : super(key: key);

  @override
  State<SpacerWidefe> createState() => _SpacerWidefeState();
}
class _SpacerWidefeState extends State<SpacerWidefe> {
  int _flexA=1;
  int _flexB=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spacer'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '空间组件',
              style: titleStyle,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: const Text(
                '只能用于Row,column和Flex布局中，可利用剩余空间进行占位，使用flex属性可一个多个spacer按比例分配空间。',
                style: subTitleStyle,
              ),
            ),
            const Text('Spacer基本使用',
            style: titleStyle,
            ),
            const Text('一个Spacer会占据可以延伸的区域',
              style: descStyle,
            ),
            Container(
              color: Colors.grey.withAlpha(33),
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 100,
                    height: 50,
                    color: Colors.red,
                  ),
                  const Spacer(),
                  Container(
                    alignment: Alignment.center,
                    width: 100,
                    height: 50,
                    color: Colors.blue,
                  ),

                ],
              ),
            ),
            const Text (
              '多个Spacer分配空间',
              style: subTitleStyle,
            ),
            _buildSliders(),
            Container(
              color: Colors.grey.withAlpha(33),
              child: Row(
                children: [
                  Spacer(flex: _flexA,),
                  Container(
                    alignment: Alignment.center,
                    width: 100,
                    height: 50,
                    color: Colors.red,
                  ),
                   Spacer(flex: _flexB,),
                  Container(
                    alignment: Alignment.center,
                    width: 100,
                    height: 50,
                    color: Colors.blue,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildSliders(){
    return Column(
      children: [
        Slider(
          divisions: 20,
            min: 1,
            max: 10,
            label: "左边flex：$_flexA",
            value: _flexA.toDouble(),
            onChanged: (v)=>setState(()=>_flexA=v.round())),
        Slider(
            divisions: 20,
            min: 1,
            max: 10,
            label: "右边flex：$_flexB",
            value: _flexB.toDouble(),
            onChanged: (v)=>setState(()=>_flexB=v.round())),

      ],
    );
  }
}


