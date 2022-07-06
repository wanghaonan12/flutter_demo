import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';
import 'package:flutter/cupertino.dart';

class CupertinoWidget extends StatelessWidget {
  const CupertinoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<int> rainbow = [
      0xffff0000,
      0xffFF7F00,
      0xffFFFF00,
      0xff00FF00,
      0xff0000FF,
      0xff8B00FF,
    ];

    final List<double> stops = [0.0, 1 / 6, 2 / 6, 3 / 6, 4 / 6, 5 / 6, 1.0];

    return Scaffold(
      appBar: AppBar(
        title: const Text('CupertinoWidget'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                '1.CupertinoAlertDialog',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const Text(
                  'Ios风格通用对话框，可指定头中尾部得组件。',
                  style: descStyle,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) =>
                            _buildCupertinoAlertDialog(context));
                  },
                  child: const Text(
                    '点击弹出CupertinoAlertDialog',
                    style: descStyle,
                  )),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '2.CupertinoActionSheet',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const Text(
                  'Ios风格通用弹出选择框，可以放多个按钮，一般与CupertinoActionSheetAction连用。',
                  style: descStyle,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) =>
                            _buildCupertinoActionSheet(context));
                  },
                  child: const Text(
                    '点击弹出CupertinoActionSheet',
                    style: descStyle,
                  )),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '3.CupertinoPopupSurFace',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const Text(
                  'Ios风格通用弹出圆角矩形模糊背景',
                  style: descStyle,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: RadialGradient(
                        radius: 1.8,
                        stops: stops,
                        colors: rainbow.map((e) => Color(e)).toList()),
                ),
                padding: const EdgeInsets.all(10),
                child: Wrap(
                  spacing: 10,
                  children: [
                    _buildCupertinoPopupSurFace(false),
                    _buildCupertinoPopupSurFace(true),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildCupertinoAlertDialog(BuildContext context) {
  return Material(
    color: Colors.transparent,
    child: CupertinoAlertDialog(
      title: _buildTitle(context),
      content: _buildContent(context),
      actions: [
        CupertinoButton(
            child: const Text('Delete'),
            onPressed: () => Navigator.pop(context)),
        CupertinoButton(
            child: const Text('Cancel'),
            onPressed: () => Navigator.pop(context)),
      ],
    ),
  );
}

Widget _buildTitle(BuildContext context) {
  return Row(
    children: [
      const Icon(
        CupertinoIcons.delete_solid,
        color: Colors.red,
      ),
      const Expanded(
          child: Text(
        "DELETE FILE",
        style: titleStyle,
      )),
      InkWell(
        child: const Icon(CupertinoIcons.clear_thick),
        onTap: () => Navigator.pop(context),
      )
    ],
  );
}

Widget _buildContent(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 18),
    child: Column(
      children: const [
        Text(
          '点击Delete将删除文件，确定继续删除吗？',
          style: descStyle,
          textAlign: TextAlign.justify,
        )
      ],
    ),
  );
}

Widget _buildCupertinoActionSheet(BuildContext context) {
  return Container(
    alignment: Alignment.bottomCenter,
    child: CupertinoActionSheet(
      //  第一行组件
      title: const Text(
        'Please choose a language!',
        style: titleStyle,
      ),
      //  第二行组件
      message: const Text(
        'the language you use in this application ',
        style: descStyle,
      ),
      cancelButton: CupertinoActionSheetAction(
        onPressed: () => Navigator.pop(context),
        child: const Text('Cancel'),
      ),
      //  中间组件列表
      actions: [
        CupertinoActionSheetAction(
          onPressed: () => Navigator.pop(context),
          child: const Text('Java'),
        ),
        CupertinoActionSheetAction(
          onPressed: () => Navigator.pop(context),
          child: const Text('Kotlin'),
        ),
        CupertinoActionSheetAction(
          onPressed: () => Navigator.pop(context),
          child: const Text('Flutter'),
        ),
        CupertinoActionSheetAction(
          onPressed: () => showAboutDialog(context: context),
          isDefaultAction: true,
          child: const Text('JavaSpring'),
        ),
      ],
    ),
  );
}

Widget _buildCupertinoPopupSurFace(bool isSurFacePainted) {
  return CupertinoPopupSurface(
    //  是否绘白
    isSurfacePainted: isSurFacePainted,
    child: Container(
      width: 150,
      height: 100,
      color: Colors.blue.withOpacity(0.3),
      alignment: Alignment.center,
    ),
  );
}
