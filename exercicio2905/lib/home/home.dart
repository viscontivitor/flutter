import 'package:flutter/material.dart';
import 'package:exercicio2905/box_card/box_card.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Seja bem-vindo ao site mais provisório que você já conheceu!',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {},
                child: const BoxCard(
                  boxContent: _AccountActionsContent(
                    icon: Icon(Icons.how_to_vote),
                    text: '12345',
                    style: TextStyle(fontSize: 16),
                    // style: TextStyle(fontSize: 16),
                  ),
                  child: Text('Vote para ganharmos mais adeptos!',
                      style: TextStyle(fontSize: 16)),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _AccountActionsContent extends StatelessWidget {
  final Icon icon;
  final String text;
  const _AccountActionsContent(
      {Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //envolve o column em um container para delimitar a largura
      width: 70, //132
      height: 70,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: icon,
          ),
          Text(text),
        ],
      ),
    );
  }
}
