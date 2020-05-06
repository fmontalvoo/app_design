import 'package:flutter/material.dart';

///URL: https://flutter-es.io/docs/development/ui/layout/tutorial
class BasicDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          _imageSection(),
          _titleSection(),
          _buttonSection(context),
          _textSection()
        ],
      )),
    );
  }

  Widget _imageSection() {
    return Container(
      width: double.infinity,
      child: Image(
        image: AssetImage('assets/images/lake.jpg'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _titleSection() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 40.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Oeschinen Lake Campground',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                SizedBox(height: 7.0),
                Text('Kandersteg, Switzerland',
                    style: TextStyle(fontSize: 18.0, color: Colors.grey)),
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red, size: 40.0),
          Text('41', style: TextStyle(fontSize: 18.0))
        ],
      ),
    );
  }

  Widget _buttonSection(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _button(Icons.call, 'Llamar'),
        _button(Icons.near_me, 'Ruta',
            () => Navigator.pushNamed(context, 'scroll')),
        _button(Icons.share, 'Compartir'),
      ],
    );
  }

  Widget _textSection() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 40.0),
      child: Text(
        'El lago Oeschinen se encuentra al pie del Blüemlisalp en los Alpes berneses. Situado a '
        '1.578 metros sobre el nivel del mar, es uno de los lagos alpinos más grandes. Un paseo '
        'en góndola desde Kandersteg, seguido de una caminata de media hora a través de pastos y '
        'bosques de pinos, lo lleva al lago, que se calienta a 20 grados centígrados en el verano. '
        'Las actividades que se disfrutan aquí incluyen remar y montar la pista de trineo de verano.',
        textAlign: TextAlign.justify,
        style: TextStyle(fontSize: 16.0),
      ),
    );
  }

  Widget _button(IconData icon, String text, [Function onTap]) {
    return GestureDetector(
      child: Column(
        children: <Widget>[
          Icon(icon, size: 40.0, color: Colors.blueAccent),
          Text(text, style: TextStyle(fontSize: 16.0, color: Colors.blueAccent))
        ],
      ),
      onTap: onTap,
    );
  }
}
