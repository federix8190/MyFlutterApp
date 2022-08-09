import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Federix App'),
        elevation: 10,
      ),
      body: PageView(
        children: [
          ItemPageViewScreen(
            color: Colors.green,
            title: "The Beatles",
            url: "https://www.udiscovermusic.com/wp-content/uploads/2020/02/The-Beatles-GettyImages-1183628511.jpg",
            description: 'Fue una banda de rock británica formada en Liverpool durante los años 1960, estando integrada desde 1962 a su separación en 1970 por John Lennon, Paul McCartney, George Harrison y Ringo Starr. Es ampliamente considerada como la banda más influyente de todos los tiempos, siendo parte fundamental en el desarrollo del movimiento contracultural de la década de 1960 y el reconocimiento de la música popular como forma de arte.',
          ),
          ItemPageViewScreen(
            color: Colors.blue,
            title: "The Who",
            url: "https://www.futuro.cl/wp-content/uploads/2022/04/the-who-1971-promo-alta-web.jpg",
            description: 'Es una banda británica de rock considerada un ícono de la música del siglo XX, formada en 1962 con el nombre de The Detours que posteriormente cambió a The Who. De esa manera el grupo, con Roger Daltrey (voz), Pete Townshend (guitarra, teclados y voz), John Entwistle (bajo y voz) y Keith Moon (batería), potenció su carrera escalando a los primeros puestos del ambiente del rock inglés. Fue conocida por sus enérgicas presentaciones en vivo las cuales incluían la destrucción de sus instrumentos. The Who ha vendido alrededor de 100 millones de discos en todo el mundo',
          ),
          CustomScreen(color: Colors.orange,),
          CustomScreen(color: Colors.indigo,),
          CustomScreen(color: Colors.pink,),
          CustomScreen(color: Colors.purple,),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        // onTap: _showAlert(context),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit_outlined),
              label: 'User'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings'
          ),
        ],
      ),
    );
  }
  
  _showAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text("Alerta"),
          content: Text("Esto es una prueba ?"),
          actions: [
            TextButton(
              onPressed: () {},
              child: Text(
                "Sip",
                style: TextStyle(color: Colors.white),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Nop",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        )
    );
  }

}

class ItemPageViewScreen extends StatelessWidget {

  final Color color;
  final String url;
  final String title;
  final String description;

  const ItemPageViewScreen({this.color, this.url, this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(url),
          Center(
              child: Text(title, style: TextStyle(fontSize: 18),)
          ),
          Center(
              child: Text(description)
          ),
        ],
      )
    );
  }
}

class CustomScreen extends StatelessWidget {

  final Color color;

  const CustomScreen({this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
          child: Text('Custom Screen')
      ),
    );
  }
}
