import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() {
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage> {
  final TextStyle _estiloTexto = new TextStyle(fontSize: 25);
  int _conteo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red[100],
        appBar: AppBar(
          title: Text(
            'Contadora',
            style: TextStyle(color: Colors.black54),
          ),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de clicks', style: _estiloTexto),
            Text('$_conteo', style: _estiloTexto),
            Image.asset('images/14.png'),
          ],
        )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero),
            onPressed: _reset,
            backgroundColor: Colors.orange),
        Expanded(child: SizedBox()),
        FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: _sustraer,
            backgroundColor: Colors.pink),
        SizedBox(width: 30),
        FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: _agregar,
            backgroundColor: Colors.amber),
      ],
    );
  }

  void _agregar() {
    setState(() => _conteo++);
  }

  void _sustraer() {
    setState(() => _conteo--);
  }

  void _reset() {
    setState(() => _conteo = 0);
  }
}
