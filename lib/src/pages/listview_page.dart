import 'dart:async';

import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {

  ScrollController _scrollController = new ScrollController();
  List<int> _listaNumeros = new List();
  int _ultimoItem = 30;
  bool _isLoading = false;

  @override
  void initState() { 
    super.initState();
    _agregarCincoImagenes();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) { 
        fetchData();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas')
      ),
      body: Stack(
        children: <Widget>[
          _crearLista(),
          _crearLoading(),
        ],
      ),
    );
  }


  Widget _crearLista() {
    return RefreshIndicator(
      onRefresh: _obtenerPaginaUno,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: _listaNumeros.length,
        itemBuilder: (BuildContext context, int index) {
          final int _imagen = _listaNumeros[index];
          return FadeInImage(
            placeholder: AssetImage('assets/loading.gif'), 
            image: NetworkImage('http://picsum.photos/500/300/?image=$_imagen')
          );
        },
      ),
    );
  }

  void _agregarCincoImagenes() {
    for (var i = 0; i < 5; i++) {
      _listaNumeros.add(_ultimoItem++);
    }
    setState(() {});
  }

  Future<dynamic> fetchData() async {
    _isLoading = true;
    setState(() {});

    final duration = new Duration(seconds: 2);
    new Timer(duration, mockHttpResponse);
  }

  void mockHttpResponse() {
    _isLoading = false;
    _scrollController.animateTo(
      _scrollController.position.pixels + 50, 
      duration: Duration(milliseconds: 250), 
      curve: Curves.fastOutSlowIn
    );
    _agregarCincoImagenes();
  }

  Widget _crearLoading() {
    if (_isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Center(
            child: CircularProgressIndicator(),
          ),
          SizedBox(height: 10.0,)
        ],
      );
      // return CircularProgressIndicator();
    } else {
      return Container();
    }
  }

  Future<Null> _obtenerPaginaUno() async {
    final duration = new Duration(seconds: 2);
    new Timer(duration, () {
      _listaNumeros.clear();
      _ultimoItem++;
      _agregarCincoImagenes();
    });
    return Future.delayed(duration);
  }

}

