import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

class ItemBean {
  final String title;
  final String subTitle;
  final String imgUrl;

  ItemBean(this.title,this.subTitle,this.imgUrl);
}

enum ItemType {java,kotlin,dart}

class RadioLIstTitleWidget extends StatefulWidget {
  const RadioLIstTitleWidget({Key? key}) : super(key: key);

  @override
  State<RadioLIstTitleWidget> createState() => _RadioLIstTitleWidgetState();
}

class _RadioLIstTitleWidgetState extends State<RadioLIstTitleWidget> {
  final Map<ItemType,ItemBean> languages={
    ItemType.java: ItemBean("java","曾经世界上最流行的语言","images/avatar.png"),
  ItemType.kotlin:ItemBean("kotlin","未来世界上最流行的语言","images/avatar.png"),
  ItemType.dart:ItemBean("dart","世界上最优雅的语言","images/avatar.png"),
};
  var _type=ItemType.java;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RadioLIstTitle"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              '单选列表组件',
              style: titleStyle,
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: const Text(
                '只能用于Row,column和Flex布局中，可利用剩余空间进行占位，使用flex属性可一个多个spacer按比例分配空间。',
                style: descStyle,
              ),
            ),
            Container(
              color: Colors.grey.withAlpha(11),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: languages.keys
                .map((e) => RadioListTile<ItemType>(
                  value: e,
                  groupValue: _type,
                  title: Text(languages[e]!.title),
                  activeColor: Colors.orangeAccent,
                  dense: false,
                  subtitle: Text(languages[e]!.subTitle),
                  selected: _type ==e,
                  secondary: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(languages[e]!.imgUrl),
                  ),
                  onChanged: (e)=>{
                    setState(()=>_type=e!)
                  },
                )).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
