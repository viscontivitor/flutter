import 'package:exercicio2905/home/home.dart';
import 'package:flutter/material.dart';
import 'package:exercicio2905/theme/my_theme.dart';

void main() {
  runApp(const Exercicio2905());
}

class Exercicio2905 extends StatelessWidget {
  const Exercicio2905({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exercicio2905',
      theme: MyTheme,
      home: const Home(),
    );
  }
}
