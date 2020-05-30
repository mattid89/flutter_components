import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards')
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipoUno(),
          SizedBox(height: 10.0),
          _cardTipoDos(),
          SizedBox(height: 10.0),
          _cardTipoUno(),
          SizedBox(height: 10.0),
          _cardTipoDos(),
          SizedBox(height: 10.0),
          _cardTipoUno(),
          SizedBox(height: 10.0),
          _cardTipoDos(),
          SizedBox(height: 10.0),
          _cardTipoUno(),
          SizedBox(height: 10.0),
          _cardTipoDos(),
          SizedBox(height: 10.0),
        ],
      ),
    );
  }

  Widget _cardTipoUno() {
    return Card(
      elevation: 10.0,
      shadowColor: Colors.blueAccent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text('Soy el Título!'),
            ),
            subtitle: Text('Este texto se supone que debe ser mas largo para probar como se ve...'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(onPressed: (){}, child: Text('Cancelar')),
              FlatButton(onPressed: (){}, child: Text('Ok')),
            ],
          ),
        ],
      ),
    );
  }

  Widget _cardTipoDos() {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 10.0,
      shadowColor: Colors.blueAccent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/loading.gif'), 
            image: NetworkImage('https://cdn.naturettl.com/wp-content/uploads/2017/02/22014001/top-tips-improve-landscapes-ross-hoddinott-11-900x601.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            fit: BoxFit.cover,
            height: 300,
          ),
          // Image(image: NetworkImage('https://cdn.naturettl.com/wp-content/uploads/2017/02/22014001/top-tips-improve-landscapes-ross-hoddinott-11-900x601.jpg'))
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Algun texto para la imagen...'),
          )
        ],
      ),
    );
  }
}