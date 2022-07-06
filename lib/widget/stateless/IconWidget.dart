import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';
import 'package:flutter_demo/common/iconfont.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('各类图表组件'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                "Icon",
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  '用于突变现实的组件，可以指定图标的资源大小，颜色，简单实用',
                  style: descStyle,
                ),
              ),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: const [
                  Icon(
                    Icons.send,
                    color: Colors.orange,
                    size: 50,
                  ),
                  Icon(
                    Icons.android,
                    color: Colors.green,
                    size: 100,
                  ),
                  Icon(
                    IconFont.icon_shangquan,
                    color: Colors.orange,
                    size: 50,
                  ),
                ],
              ),
              const Text(
                'IConButton',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const Text(
                  '点击图标按钮可指定图标信息，内边距，大小，颜色等，接收时间',
                  style: descStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.camera,
                    size: 50,
                    color: Colors.green,
                  ),
                  //  长安提示
                  tooltip: 'camera',
                  //  长安高亮显示
                  highlightColor: Colors.orange,
                  //  水波纹颜色
                  splashColor: Colors.blue,
                ),
              ),
              const Text(
                'AnimatedIcon',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const Text(
                  '根据动画控制器获得动画效果，可以指定图标大小，颜色等',
                  style: descStyle,
                ),
              ),
              Test(),
            ],
          ),
        ),
      ),
    );
  }
}


class Test extends StatefulWidget {
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> with TickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController =
    AnimationController(duration: const Duration(seconds: 1), vsync: this)
      ..addStatusListener((AnimationStatus status) {
        if(status == AnimationStatus.completed) {
          animationController.reverse();
        }else if (status==AnimationStatus.dismissed) {
          animationController.forward();
        }
      });
    animationController.forward();

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      alignment: Alignment.center,
      child: AnimatedIcon(
        icon: AnimatedIcons.view_list,
        progress: animationController,
        color: Colors.blue,
        size: 50,
      ),
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }
}
