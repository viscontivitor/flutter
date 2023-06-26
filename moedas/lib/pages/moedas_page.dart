import 'package:flutter/material.dart';
import 'package:moedas/moeda/moeda.dart';
import 'package:moedas/pages/moedas_detalhes.dart';
import 'package:moedas/repositorio/moeda_repository.dart';
//import 'package:intl/intl.dart';

class MoedasPage extends StatefulWidget {
  const MoedasPage({Key? key}) : super(key: key);

  @override
  State<MoedasPage> createState() => _MoedasPageState();
}

//mudamos do estado do widget para que ele possa ser mutável
class _MoedasPageState extends State<MoedasPage> {
  final tabela = MoedaRepository.tabela;
  //NumberFormat real = NumberFormat.currency(locale: 'pt_BR', name: 'R\$');
  List<Moeda> selecionadas = [];

  AppBarDinamica() {
    if (selecionadas.isEmpty) {
      return AppBar(
        title: const Text('Cripto moedas'),
      );
    } else {
      return AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            setState(() {
              selecionadas = []; // chama a build novamente para resetar a ação
            });
          },
        ),
        title: Text('${selecionadas.length} escolhida(s)'),
        backgroundColor: Colors.blueGrey[60],
        elevation: 1,
        iconTheme: const IconThemeData(color: Colors.black87),
        titleTextStyle: const TextStyle(
            color: Color.fromARGB(255, 236, 131, 224),
            fontSize: 20,
            fontWeight: FontWeight.bold),
      );
    }
  }

  mostrarDetalhes(Moeda moeda) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => MoedaDetalhesPage(moeda: moeda),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            AppBarDinamica(), //chamada da função que está declarada em cima.
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
                  : SizedBox(
                      width: 40, child: Image.asset(tabela[moeda].icone)),
              title: Text(
                tabela[moeda].nome,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Text(
                (tabela[moeda].preco),
              ),
              selected: false,
              selectedColor: Colors.indigo[50],
              onLongPress: () {
                setState(() {
                  (selecionadas.contains(tabela[moeda]))
                      ? selecionadas.remove(tabela[moeda])
                      : selecionadas.add(tabela[moeda]);
                });
              },
              onTap: () => mostrarDetalhes(tabela[
                  moeda]), //condição que define se a moeda está ou não selecionada
            );
          },
          padding: const EdgeInsets.all(16),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: tabela.length,
        ),
        // sempre usar junto uma label
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: selecionadas.isNotEmpty // passar por uma condição
            ? FloatingActionButton.extended(
                onPressed: () {},
                icon: const Icon(Icons.star),
                label: const Text(
                  'Favoritos',
                  style: TextStyle(
                    letterSpacing: 4,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            : null);
  }
}
