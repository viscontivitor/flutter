import 'package:flutter/material.dart';

void main() => runApp(const AppBarApp());

/*void main() {
  runApp(const AppBar());
}*/

class AppBarApp extends StatelessWidget {
  //AppBar é responsável pelo topo (menu).
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TopoAppBar(),
    );
  }
}

class TopoAppBar extends StatelessWidget {
  const TopoAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modelo de Menu'),
        actions: <Widget>[
          //colocar todos os ícones aqui dentro.
          IconButton(
            icon: const Icon(Icons.notification_add),
            tooltip: 'Legenda de ícone',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Você tem notificações!')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.reorder),
            tooltip: 'Menu',
            onPressed: () {},
          ),
          IconButton(
              icon: const Icon(Icons.person),
              tooltip: 'Configuração de perfil',
              onPressed: () {}),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'próxima página',
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return Scaffold(
                  appBar: AppBar(
                    title: const Text('Página Anterior'),
                  ),
                  body: const Center(
                      child: Text(
                    'Segunda Página',
                    style: TextStyle(fontSize: 24),
                  )),
                );
              }));
            },
          ),
        ],
      ), //Uma barra de aplicativos que consiste em uma barra de ferramentas e principalmente outros widgets.
      body: const Center(
        child: Text(
          'Conteúdo da página home',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
