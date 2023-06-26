import 'package:flutter/cupertino.dart';

/// Flutter code sample for [CupertinoButton].
void main() => runApp(const CupertinoButtonApp());

class CupertinoButtonApp extends StatelessWidget {
  const CupertinoButtonApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: CupertinoButtonExample(),
    );
  }
}

class CupertinoButtonExample extends StatelessWidget {
  const CupertinoButtonExample({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CupertinoButton.filled(
              onPressed: () {},
              child: const Text('Comprar'),
            ),
            const SizedBox(height: 30),
            CupertinoButton.filled(
              onPressed: () {},
              child: const Text('Vender'),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(height: 30),
                    CupertinoButton.filled(
                      onPressed: () {},
                      child: const Text('Trocar'),
                    ),
                    const SizedBox(height: 30),
                    CupertinoButton.filled(
                      onPressed: () {},
                      child: const Text('Doar'),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
