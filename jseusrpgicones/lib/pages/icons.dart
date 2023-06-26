import 'package:flutter/material.dart';
import 'package:jseusrpgicones/icone/icone.dart';
import 'package:jseusrpgicones/repositorio/icons_repository.dart';
import 'package:jseusrpgicones/screens/home.dart';

class IconsPage extends StatefulWidget {
  const IconsPage({Key? key}) : super(key: key);

  @override
  State<IconsPage> createState() => _IconsPageState();
}

class _IconsPageState extends State<IconsPage> {
  final tabela = DiscipulosRepository.tabela;

  List<Icone> selecionadas = [];

  AppBarDinamica() {
    if (selecionadas.isEmpty) {
      return AppBar(
        title: const Text('Escolha os seus discípulos - seja sábio!'),
      );
    } else {
      return AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            setState(() {
              selecionadas = []; //Chama a build novamente para resetar a ação
            });
          },
        ),
        title: Text('${selecionadas.length} discípulo(s) selecionado(s)'),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 1,
        iconTheme: const IconThemeData(color: Colors.black87),
        titleTextStyle: const TextStyle(
          color: Colors.black87,
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.arrow_forward),
            onPressed: () {
              onTap: () => mostrarDetalhes(tabela[moeda]);
              },
          ),
        ],
      );
    }
  }
 mostrarDetalhes(Moeda.moeda){
    Navigator.push(
      context, 
      MaterialPageRoute(
        builder:(_) => Home (moeda:moeda),
      ), 
    
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarDinamica(),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int moeda) {
          return ListTile(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            leading: (selecionadas.contains(tabela[moeda]))
                ? const CircleAvatar(
                    child: Icon(Icons.check),
                  )
                : SizedBox(width: 40, child: Image.asset(tabela[moeda].icone)),
            title: Text(
              tabela[moeda].nome,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
            selected: false,
            selectedColor: const Color.fromARGB(255, 0, 0, 0),
            onLongPress: () {
              setState(() {
                (selecionadas.contains(tabela[moeda]))
                    ? selecionadas.remove(tabela[moeda])
                    : selecionadas.add(tabela[moeda]);
              });
            },
          );
        },
        padding: const EdgeInsets.all(16),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: tabela.length,
      ), 
    );   
  }
}
