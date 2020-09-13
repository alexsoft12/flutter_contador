
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _stiloTexto = TextStyle(fontSize: 25.0);
  int _conteo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
      ) ,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de clicks:', style: _stiloTexto,),
            Text('$_conteo', style: _stiloTexto,),
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
    );
  }

 Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0,),
        FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _reset,),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _sustraer),
        SizedBox(width: 30.0,),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _agregar),
      ],
    );
 }

  void _reset() => setState(() => _conteo = 0);

  void _sustraer() => setState(() => _conteo--);

  void _agregar() => setState(() => _conteo++);
}
