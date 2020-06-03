import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  double _valorSlider = 10.0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders')
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            Expanded(child: _crearImagen()),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la Imagen',
      // divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (valor) {
        setState(() {
          _valorSlider = valor;
        });
      },
    );
  }

  Widget _crearImagen() {
    return FadeInImage(
            placeholder: AssetImage('assets/loading.gif'), 
            image: NetworkImage('https://vignette.wikia.nocookie.net/death-battle-fanon-wiki-en-espanol/images/d/d1/Batman.png/revision/latest/top-crop/width/360/height/450?cb=20200323061733&path-prefix=es'),
            fadeInDuration: Duration(milliseconds: 400),
            width: _valorSlider,
            fit: BoxFit.contain,
        );
  }
}