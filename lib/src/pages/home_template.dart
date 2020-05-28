import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final List<String> opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        children: _crearItemsWithMap(),
      ),
    );
  }

  // List<Widget> _crearItems() {

  //   List<Widget> lista = new List<Widget>();
  //   for (String opt in opciones) {
  //     final tempWidget = ListTile(
  //       title: Text(opt),
  //     );
  //     lista..add(tempWidget)
  //         ..add(Divider());
  //   }
  //   return lista;

  // }


  List<Widget> _crearItemsWithMap() {

    return opciones.map((opt) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text('$opt!'),
            subtitle: Text('un subtítulo...'),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();

  }

}