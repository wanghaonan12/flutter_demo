import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var buttons = {
      Colors.red: Icons.add,
      Colors.blue: Icons.bluetooth,
      Colors.green: Icons.android,
      Color.fromARGB(255, 59, 91, 118): Icons.bluetooth,
      Color.fromARGB(255, 175, 160, 76): Icons.android,
      Color.fromARGB(255, 55, 80, 101): Icons.bluetooth,
      Color.fromARGB(255, 31, 86, 32): Icons.android,
      Color.fromARGB(255, 163, 243, 33): Icons.bluetooth,
      Color.fromARGB(255, 175, 134, 76): Icons.android,
      Color.fromARGB(255, 156, 33, 243): Icons.bluetooth,
      Color.fromARGB(255, 76, 150, 175): Icons.android,
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Button组件'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              text('MaterialButton材质按钮'),
              container(
                  '基于RawMaterialButton实现的通用Material按钮。可盛放一个子组件,能定义颜色、形状等表现,可接收点击和长按事件。'),
              MaterialButton(
                height: 40,
                elevation: 5,
                color: Colors.blue,
                highlightColor: Colors.green,
                splashColor: Colors.orange,
                textColor: Colors.white,
                padding: const EdgeInsets.all(8),
                child: Container(
                  height: 50,
                  width: 50,
                  child: Image.asset('images/avatar.png'),
                ),
                onLongPress: () => showAboutDialog(context: context),
                onPressed: () => print('onPressed'),
              ),
              text('自定义MaterialButton'),
              SizedBox(
                width: 40,
                height: 40,
                child: MaterialButton(
                  padding: const EdgeInsets.all(0),
                  textColor: const Color(0xFFEFFFFF),
                  elevation: 15,
                  color: Colors.blue,
                  highlightColor: const Color(0xFFF88B0A),
                  splashColor: Colors.red,
                  shape: const CircleBorder(
                    side: BorderSide(
                      width: 2.0,
                      color: Color(0xFFFDFDFD),
                    ),
                  ),
                  onLongPress: () => showAboutDialog(context: context),
                  onPressed: () => print('onPressed'),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                width: 200,
                height: 40,
                color: Colors.purple,
                padding: const EdgeInsets.all(2),
                child: MaterialButton(
                  padding: const EdgeInsets.all(0),
                  textColor: const Color(0xFFEFFFFF),
                  elevation: 5,
                  color: Colors.blue,
                  highlightColor: const Color(0xFFF88B0A),
                  splashColor: Colors.red,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  onLongPress: () => print('onLongPress'),
                  onPressed: () => print('onPressed'),
                  child: const Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
              ),
              text('FloatingActionButton浮动按钮'),
              container(
                  '浮动按钮,一般用于Scaffold中,可摆放在特定位置。可盛放一个子组件,接收点击事件,可定义颜色、形状等。'),
              Wrap(
                spacing: 200,
                runSpacing: 20,
                children: buttons.keys
                    .map(
                      (e) => FloatingActionButton(
                        onPressed: () {},
                        heroTag: '$e',
                        backgroundColor: e,
                        mini: true,
                        foregroundColor: Colors.white,
                        tooltip: 'FAB',
                        elevation: 5,
                        child: Icon(buttons[e]),
                      ),
                    )
                    .toList(),
              ),
              text('TextButton文本按钮'),
              container(
                  '无阴影无水波纹的文本按钮,基于MaterialButton实现,所有属性和MaterialButton类似。'),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: TextButton(
                  onPressed: () {
                    print('textButton---onPressed');
                  },
                  onLongPress: () {
                    print('textButton---onLongPress');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 58, 139, 183),
                    ),
                  ),
                  child: const Text(
                    'TextButton',
                    style: titleLightStyle,
                  ),
                ),
              ),
              text('OutlinedButton边框按钮'),
              container('边框样式按钮,基于MaterialButton实现,所有属性和MaterialButton类似。'),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: OutlinedButton(
                  onPressed: () {},
                  onLongPress: () {},
                  child: const Text(
                    'OutlinedButton',
                    style: titleStyle,
                  ),
                ),
              ),
              text('ElevatedButton浮起按钮'),
              container('有阴影的浮起按钮,基于MaterialButton实现,所有属性和MaterialButton类似。'),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  onLongPress: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.blue,
                    ),
                    shadowColor: MaterialStateProperty.all(
                      Colors.orange,
                    ),
                  ),
                  child: const Text(
                    'ElevatedButton',
                    style: titleLightStyle,
                  ),
                ),
              ),
              text('ButtonBar按钮栏'),
              container('接收按钮组件列表,常用于盛放若干个按钮,可指定对齐方式、边距等信息。'),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: ButtonBar(
                  alignment: MainAxisAlignment.spaceEvenly,
                  buttonHeight: 40,
                  buttonPadding: const EdgeInsets.symmetric(horizontal: 15),
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        print("ElevatedButton");
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.blue,
                        ),
                        shadowColor: MaterialStateProperty.all(
                          Colors.orange,
                        ),
                      ),
                      child: const Text('Elevated'),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        print("OutlinedButton");
                      },
                      child: const Text(
                        'Outlined',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        print("OutlinedButton");
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.blue,
                        ),
                      ),
                      child: const Text(
                        'Text',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
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

text(String msg) {
  return Text(
    '$msg',
    style: titleStyle,
  );
}

container(String msg1) {
  return Container(
    margin: const EdgeInsets.symmetric(
      vertical: 10.0,
    ),
    child: Text(
      '$msg1',
      style: descStyle,
    ),
  );
}
