import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

class AboutListTileWidget extends StatelessWidget {
  const AboutListTileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AboutListTileWidget'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text (
              '关于应用条目组件',
              style: titleStyle,

            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                '一个点击条目，奠基石可以弹出应用的相关信息，可指定应用图标，应用名，应用版本等信息和内部子组件列表。',
                style: descStyle,
              ),
            ),
            const AboutListTile(
              icon: Icon(Icons.info),
              applicationIcon: FlutterLogo(),
              applicationName: 'Flutter Demo',
              applicationVersion: '1.1.2',
              applicationLegalese: 'Copyright@ 2022-2023 走进flutter',
              aboutBoxChildren: [
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Flutter是Google开源的构建用户界面（UI）工具包，帮助开发者通过一套代码库高效构建多平台精美应用，'
                      '支持移动、Web、桌面和嵌入式平台。 [5]  Flutter 开源、免费，拥有宽松的开源协议，适合商业项目。'
                      'Flutter已推出稳定的2.0版本。',
                  style: descStyle,
                  textAlign: TextAlign.justify,
                ),
                )

              ],
            )
          ],
        ),
      ),
    );
  }
}
