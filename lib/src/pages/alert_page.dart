import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar Alerta!'),
          onPressed: () => _mostrarAlert(context),
          color: Colors.blueAccent,
          textColor: Colors.white,
          // shape: StadiumBorder(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  _mostrarAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          title: Text('El titulo!'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('El contenido debe ser mas largo para poder ver donde esta alineado!'),
              SizedBox(height: 5.0,),
              FlutterLogo(size: 100.0),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              onPressed: () => Navigator.of(context).pop(), 
              child: Text('Cancelar')
            ),
            FlatButton(
              onPressed: () => Navigator.of(context).pop(), 
              child: Text('Ok')
            ),
          ],
        );
      },
    );
  }
}
