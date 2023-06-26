import 'package:flutter/material.dart';

void main() {
  runApp(const AppBarApp());

  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Row(
            children: [
              Container(
                Mybutton(),
              ),
              Container(
                ShoppingList(
                  products: [
                    Product(name: 'Eggs'),
                    Product(name: 'Flour'),
                    Product(name: 'Chocolate'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
  runApp(const MaterialApp(
    title: 'Lista App',
    home: ShoppingList(
      products: [
        Product(name: 'Eggs'),
        Product(name: 'Flour'),
        Product(name: 'Chocolate'),
      ],
    ),
  ));

  runApp(const BottomNavigationBarExampleApp());
}

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
          color: const Color.fromRGBO(28, 82, 21, 1),
        ),
        child: const Center(
          child: Text('Entrar'),
        ),
      ),
    );
  }
}

class Product {
  const Product({required this.name});
  final String name;
}

typedef CartChangedCallback = Function(Product product, bool inCart);

class ShoppingListItem extends StatelessWidget {
  ShoppingListItem({
    required this.product,
    required this.inCart,
    required this.onCartChanged,
  }) : super(key: ObjectKey(product));

  final Product product;
  final bool inCart;
  final CartChangedCallback onCartChanged;

  Color _getColor(BuildContext context) {
    return inCart ? Colors.black54 : Theme.of(context).primaryColor;
  }

  TextStyle? _getTextStyle(BuildContext context) {
    if (!inCart) {
      return null;
    }

    return const TextStyle(
      color: Colors.black54,
      decoration: TextDecoration.lineThrough,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        onCartChanged(product, inCart);
      },
      leading: CircleAvatar(
        backgroundColor: _getColor(context),
        child: Text(product.name[0]),
      ),
      title: Text(
        product.name,
        style: _getTextStyle(context),
      ),
    );
  }
}

class ShoppingList extends StatefulWidget {
  const ShoppingList({required this.products, super.key});

  final List<Product> products;
  @override
  State<ShoppingList> createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
  final _shoppingCart = <Product>{};

  void _handleCartChanged(Product product, bool inCart) {
    setState(() {
      if (!inCart) {
        _shoppingCart.add(product);
      } else {
        _shoppingCart.remove(product);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de produtos'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        children: widget.products.map((product) {
          return ShoppingListItem(
            product: product,
            inCart: _shoppingCart.contains(product),
            onCartChanged: _handleCartChanged,
          );
        }).toList(),
      ),
    );
  }
}

class BottomNavigationBarExampleApp extends StatelessWidget {
  const BottomNavigationBarExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavigationBarExample(),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Página 0: Home',
      style: optionStyle,
    ),
    Text(
      'Pagina 1: Negócios',
      style: optionStyle,
    ),
    Text(
      'Página 2: Escola',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inferior'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Negócio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Escola',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
