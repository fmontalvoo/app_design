import 'dart:ui';
import 'dart:math' as math;

import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _background(context),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[_header(), _buttonMatrix()],
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _header() {
    return SafeArea(
        child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Classify transaction',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Classify this transaction into a particular category',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ],
            )));
  }

  Widget _background(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double lado = (500.0 * size.shortestSide) / 600.0;
    final double top = (-90.0 * size.longestSide) / 760.0;

    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.5),
              end: FractionalOffset(0.0, 1.0),
              colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ])),
    );

    final caja = Transform.rotate(
      angle: -math.pi / 5,
      child: Container(
        width: lado,
        height: lado,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80.0),
            gradient: LinearGradient(colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0)
            ])),
      ),
    );

    return Stack(
      children: <Widget>[gradiente, Positioned(top: top, child: caja)],
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
          primaryColor: Colors.pinkAccent,
          textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))),
      child:
          BottomNavigationBar(iconSize: 30.0, items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today), title: Container()),
        BottomNavigationBarItem(
            icon: Icon(Icons.bubble_chart), title: Container()),
        BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle), title: Container()),
      ]),
    );
  }

  Widget _buttonMatrix() {
    return Table(children: <TableRow>[
      TableRow(children: <Widget>[
        _button(Colors.blue, Icons.border_all, 'General'),
        _button(Colors.purpleAccent, Icons.ac_unit, 'Hola')
      ]),
      TableRow(children: <Widget>[
        _button(Colors.blue, Icons.shop, 'Buy'),
        _button(Colors.orange, Icons.insert_drive_file, 'File')
      ]),
      TableRow(children: <Widget>[
        _button(Colors.blueAccent, Icons.movie_filter, 'Entertaiment'),
        _button(Colors.green, Icons.cloud, 'Grocery')
      ]),
      TableRow(children: <Widget>[
        _button(Colors.red, Icons.collections, 'Photos'),
        _button(Colors.teal, Icons.help_outline, 'Help')
      ]),
    ]);
  }

  Widget _button(Color color, IconData icon, String text) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, .7),
              borderRadius: BorderRadius.circular(20.0)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: color,
                radius: 35.0,
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
              SizedBox(height: 25.0),
              Text(
                text,
                style: TextStyle(color: color),
              )
            ],
          ),
        ),
      ),
    );
  }
}
