import 'package:flutter/material.dart';

class MiWidgetStatefull extends StatefulWidget {
  @override
  State<MiWidgetStatefull> createState() => _MiWidgetStatefullState();
}

class _MiWidgetStatefullState extends State<MiWidgetStatefull> {
  String texto = "Hola soy un statefullwidet";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Statedullapp")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(texto, style: TextStyle(fontSize: 30)),
            ElevatedButton(
              onPressed: () {
                texto = "Hola este es el nuevo valor";
                print(texto);
                setState(() {});
              },
              child: Text("Cambiar el valor"),
            ),
          ],
        ),
      ),
    );
  }
}

class MiWidgetEstatico extends StatelessWidget {
  String textoMostrar = "Hola soy un statelesswidget";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Aplicativo de estados")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(textoMostrar, style: TextStyle(fontSize: 30)),
            ElevatedButton(
              onPressed: () {
                textoMostrar = "Hola cómo estas";
                print(textoMostrar);
              },
              child: Text("Cambiar el valor a hola cómo estas"),
            ),
          ],
        ),
      ),
    );
  }
}
