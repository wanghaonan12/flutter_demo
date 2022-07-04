import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

class AlertDialogWidget extends StatelessWidget {
  const AlertDialogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("AlertDialog")),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '分割占位符',
                  style: titleStyle,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: const Text(
                    '一个通用对话框结构，指定头，中，为出的组件拥有标题，内容的文字样式和编剧，影深，形状等属性',
                    style: descStyle,
                  ),
                ),
                MaterialButton(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  color: Colors.blue,
                  child: const Text(
                    '点击弹出对话框！',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (ctx) => _buildAlertDialog());
                  },
                )
              ],
            ),
          ),
        ));
  }
}

Widget _buildAlertDialog() {
  return AlertDialog(
    title: _buildTitle(),
    titleTextStyle: titleStyle,
    titlePadding: const EdgeInsets.all(5),
    contentPadding: const EdgeInsets.symmetric(horizontal: 5),
    backgroundColor: Colors.white,
    content: _buildContent(),
    actions: const <Widget>[
      Icon(
        Icons.android,
        color: Colors.blue,
      ),
      Icon(
        Icons.add,
        color: Colors.red,
      ),
      Icon(
        Icons.g_translate,
        color: Colors.green,
      ),
      Icon(
        Icons.games,
        color: Colors.orange,
      ),
    ],
    elevation: 5,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))),
  );
}

Widget _buildTitle() {
  return Row(
    children: [
      Image.asset(
        'images/Android_Studio.png',
        width: 35,
      ),
      const SizedBox(
        width: 10,
      ),
      const Expanded(
          child: Text(
        "关于",
        style: subTitleStyle,
      ))
    ],
  );
}

Widget _buildContent() {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
          '学习所有Flutter空间的详细使用方法，介绍，使用场景记住一万人难题，使用flutter开发精美的应用，不断完善中，目标是整理所有组件。',
          style: descStyle,
          textAlign: TextAlign.justify,
        ),
      )
    ],
  );
}
