import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  const Mybutton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //widget não possui uma representação visual, mas ele detecta gestos feitos pelo usuario.
      onTap: () {
        print('Página teste!');
      },
      child: Container(
        height: 50.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Color.fromRGBO(28, 82, 21, 1),
        ),
        child: const Center(
          child: Text('Entrar'),
        ),
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Mybutton(),
        ),
      ),
    ),
  );
}
