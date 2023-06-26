import 'package:flutter/material.dart';

class BoxCard extends StatelessWidget {
  final Widget boxContent;
  const BoxCard({Key? key, required this.boxContent, required Text child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      // Tem o mesmo comportamento do container, porém ele irá colocar os elementos para cima (camadas).
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        boxShadow: kElevationToShadow[3],
        borderRadius: BorderRadius.circular(5),
        color: Theme.of(context).hoverColor,
      ),
      child: boxContent,
    );
  }
}
