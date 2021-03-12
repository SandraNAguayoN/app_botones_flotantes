import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {
  final TextStyle estiloTexto = new TextStyle(fontSize: 25);
  final conteo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contadora'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Número de clicks', style: TextStyle(fontSize: 25)),
          Text('0', style: TextStyle(fontSize: 25)),
        ],
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Hola!');
          },
          child: Icon(Icons.add)),
    );
  }
}
