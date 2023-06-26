import 'package:flutter/material.dart';
import 'package:jseusrpgicones/pages/icons.dart';

class JesusApp extends StatelessWidget {
  const JesusApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RPG - Jesus, o imortal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const IconsPage(),
    );
  }
}
