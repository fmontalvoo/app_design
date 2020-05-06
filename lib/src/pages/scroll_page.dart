import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  final estilo = TextStyle(color: Colors.white, fontSize: 50.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        pageSnapping: true,
        scrollDirection: Axis.vertical,
        children: <Widget>[_pageOne(), _pageTwo(context)],
      ),
    );
  }

  Widget _pageOne() {
    return Stack(
      children: <Widget>[_backgroundColor(), _backgroundImage(), _content()],
    );
  }

  Widget _pageTwo(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: RaisedButton(
            shape: StadiumBorder(),
            color: Colors.blue,
            textColor: Colors.white,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Text('Bienvenido', style: TextStyle(fontSize: 25.0)),
            ),
            onPressed: () => Navigator.pushNamed(context, 'menu')),
      ),
    );
  }

  Widget _backgroundColor() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _backgroundImage() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/images/original.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _content() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          children: <Widget>[
            Text('11º', style: estilo),
            Text('Miércoles', style: estilo),
            Expanded(child: Container()),
            Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 70.0)
          ],
        ),
      ),
    );
  }
}
