import 'package:flutter/material.dart';
import 'package:go_mall_flutter_app/themes/dark-yellow.theme.dart';
import 'package:go_mall_flutter_app/themes/dark.theme.dart';
import 'package:go_mall_flutter_app/themes/light.theme.dart';
import 'pages/tabs.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: darkYellowTheme(),
      home: DefaultTabController(length: 3, child: TabsPage()),
    );
  }
}
