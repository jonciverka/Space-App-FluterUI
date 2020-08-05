import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
          children: <Widget>[
            _header(),
            _imagenHeader(),
            _miembros(),
            _actividades(context)
          ],
        ),
      ),
    );
  }

  Widget _header(){
    return Padding(
      padding: const EdgeInsets.all(13),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[        
          Text("Space society", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
          Icon(Icons.settings)
        ],
      ),
    );
  }
  Widget _imagenHeader(){
    return Container(
      padding: EdgeInsets.all(13),
      child: Image(
        image: AssetImage('assets/space.jpg'),
        width: double.infinity,
        height: 180,
        fit: BoxFit.cover,
      ),
    );
  }            
  Widget _miembros(){
    return Padding(
      padding: const EdgeInsets.all(13),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("4 members", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          Container(
            width: double.infinity,
            height: 120,
            child: PageView(
              pageSnapping: false,
              controller: PageController(
                viewportFraction: .3
              ),
              children: <Widget>[
                _thumbnailSpace("troy","assets/earth.jpg"),
                _thumbnailSpace("Lloyid","assets/neptune.jpg"),
                _thumbnailSpace("Kevin","assets/pluto.jpg"),
                _thumbnailSpace("Sam","assets/saturn.jpg"),
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget _thumbnailSpace(String nombre, String urlImage){
    return  Column(
      children: <Widget>[
        SizedBox(height: 10,),
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image(
            image: AssetImage(urlImage),
            height: 70,
            width: 70,
            ),
        ),
        SizedBox(height: 10,),
        Text(nombre)
      ],
    );
  }
  Widget _actividades(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text("Activities", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
          Container(
            width: double.infinity,
            height: 210,
            padding: EdgeInsets.only(top:15),
            child: PageView(
              pageSnapping: false,
              controller: PageController(
                viewportFraction: .4
              ),
              children: <Widget>[
                _cartaEspacio('assets/espacio1.jpeg',"Start gazing","Apr 7",context),
                _cartaEspacio('assets/espacio2.jpg',"Lunar Night","May 21", context),
                _cartaEspacio('assets/espacio3.jpg',"Moon walking","May 23", context),
                _cartaEspacio('assets/espacio4.jpg',"Start gazing","Jun 18", context)
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget _cartaEspacio(String urlImage, String nombre, String fecha,BuildContext context){
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, "detalle",arguments: {"url":urlImage, "nombre":nombre});
      },
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image(
            image: AssetImage(urlImage),
            width: 120,
            height: 150,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 8,),
          Text(nombre, style: TextStyle(fontWeight: FontWeight.bold),),
          SizedBox(height: 6,),
          Text(fecha, style: TextStyle(fontSize: 10, color: Colors.black54),)
        ],
      ),
    );
  }
}