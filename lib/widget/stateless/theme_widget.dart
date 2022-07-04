import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

class ThemeWidget extends StatelessWidget {
  const ThemeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final queryData = Theme.of(context).textTheme;
    final Map<String, dynamic> styles = {
      "titleMedium: ": queryData.subtitle1,
      "titleSmall: ": queryData.subtitle2,
      "bodyLarge: ": queryData.bodyText1,
      "bodyMedium: ": queryData.bodyText2,
      "button: ": queryData.button,
      "overline labelSmall: ": queryData.overline,
      "headline6: titleLarge": queryData.headline6,
      "headline5: headlineSmall": queryData.headline5,
      "headline4:headlineMedium ": queryData.headline4,
      "headline3:displaySmall ": queryData.headline3,
      "headline2:displayMedium": queryData.headline2,
      "headline1:displayLarge ": queryData.headline1,
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme组件'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children:
                    styles.keys.map((e) => _buildItem(e, styles[e])).toList(),
              ),
              const Text(
                'Theme使用',
                style: titleStyle,
              ),
              Theme(
                data: ThemeData(
                  cardTheme: const CardTheme(color: Colors.pink, elevation: 5),
                  dividerTheme: const DividerThemeData(
                    color: Colors.blue,
                    thickness: 2,
                  ),
                  sliderTheme: const SliderThemeData(
                    thumbColor: Colors.red,
                    activeTrackColor: Colors.green,
                    inactiveTrackColor: Colors.grey,
                  ),
                ),
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: <Widget>[
                    Card(
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.transparent,
                      ),
                    ),
                    SizedBox(
                      width: 150,
                      child: Slider(
                        value: 0.6,
                        onChanged: (v) => {},
                      ),
                    ),
                    const SizedBox(
                      width: 150,
                      child: Divider(),
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

  Widget _buildItem(String e, TextStyle style) => Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  e,
                  style: descStyle,
                ),
                Text(
                  "Dart",
                  style: style,
                )
              ],
            ),
          ),
          const Divider(
            height: 1,
          )
        ],
      );
}
