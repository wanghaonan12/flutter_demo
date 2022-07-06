import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var dataColor = [
      Colors.red,
      Colors.yellow,
      Colors.blue,
      Colors.green,
    ];

    var dataThickness = [10.0, 20.0, 30.0, 40.0];
    var data = Map.fromIterables(dataColor, dataThickness);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Divider'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '水平分割线',
              style: titleStyle,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: const Text(
                '水平分割线，可以指定颜色，高度，宽度，左右边距等信息，用于列表的item分割线',
                style: descStyle,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: dataColor.map((e) => Divider(
                  //分割线颜色
                  color: e,
                  //前面孔雀长度
                  indent: data[e],
                  //后面空缺长度
                  endIndent: data[e]!*2,
                  //展位高度
                  height: data[e],
                  //分割线的粗细
                  thickness: data[e]!/10,
                )).toList(),
              ),
            ),
            const Text(
              '垂直分割线',
              style: titleStyle,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: const Text(
                '垂直分割线，可以指定颜色，高度，宽度，左右边距等信息，用于列表的item分割线',
                style: descStyle,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: dataColor.map((e) => Divider(
                  //分割线颜色
                  color: e,
                  //前面孔雀长度
                  indent: data[e],
                  //后面空缺长度
                  endIndent: data[e]!*2,
                  //展位高度
                  height: data[e],
                  //分割线的粗细
                  thickness: data[e]!/2,
                )).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
