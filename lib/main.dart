import 'package:flutter/material.dart';
import 'package:flutter_demo/bottom/index.dart';
import 'package:flutter_demo/common/routes.dart';
void main() {
  runApp(const MyApp());
print(List.generate(10, (index) => index));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: routes,
      initialRoute: '/',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const Index(),
    );
  }
}
