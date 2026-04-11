import 'package:flutter/material.dart';

class MachupicchuPage extends StatelessWidget {
  Column buildButton(String text, IconData iconData) {
    Color primaryColor = Colors.blue;
    return Column(
      children: [
        Icon(iconData, color: primaryColor),
        Text(text, style: TextStyle(color: primaryColor)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Imágen de machupicchu
          Image.network(
            "https://images.pexels.com/photos/18662534/pexels-photo-18662534.jpeg",
          ),
          // Sección de información
          Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Machu Picchu Maravilla del mundo",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Cusco - Perú",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.orange),
                        Text("99"),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildButton("CALL", Icons.call),
                      buildButton("ROUTE", Icons.near_me),
                      buildButton("SHARE", Icons.share),
                    ],
                  ),
                ),
                Text(
                  "La llaqta de Machupicchu representa una obra de arte, arquitectura e ingeniería en perfecta armonía con la naturaleza y resulta el legado más importante de la civilización Inka a la humanidad. Fue abandonada durante la segunda mitad del siglo XVI sin embargo, nunca estuvo perdida ya que fue visitada y habitada ocasionalmente. Existen documentos coloniales que se refieren a la llaqta de Machupicchu como el «Asiento de los Incas» o el «Pueblo Antiguo del Inka Nombrado Guaynapicchu».Puedes descargar el folleto informativo en Español, Inglés o Quechua desde los siguientes enlaces:",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
