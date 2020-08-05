import 'package:flutter/material.dart';

class DetallePAge extends StatelessWidget {
  const DetallePAge({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final  Map  args = ModalRoute.of(context).settings.arguments;
    return  Scaffold(
      backgroundColor: Color(0xfff9faff),
        body: SafeArea(
          child: Column(
          children: <Widget>[
            _header(),
            Stack(
              children: <Widget>[
                _cuerpo(args["nombre"],args["url"] ),
                _imagen(args["url"])
              ],                
            ),
          ],
        ),
      )
    );
  }
  Widget  _header(){
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: <Widget>[
          Icon(Icons.arrow_back_ios),
          Expanded(
            child: Text("Activities",textAlign:TextAlign.center  ,style: TextStyle(color: Colors.black87, fontSize: 20, fontWeight: FontWeight.bold) ,)
          )
        ],
      ),
    );
  }
  Widget  _cuerpo(String nombre,String urlImage){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0xfff0f2fc),
            spreadRadius: .8,
            blurRadius: 10,
          )
        ]
      ),
      width: double.infinity,
      height: 560,
      margin: EdgeInsets.symmetric(horizontal:40, vertical: 40),
      child: Column(
        children: <Widget>[
          Container(
            height: 80,
            child: Center(child: Text(nombre, style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),))
          ),
          SizedBox(height: 190,),
          Text("May 11", style: TextStyle(fontSize: 45, color: Colors.grey),),
          SizedBox(height: 15,),
          Text("11:00 AM", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
          SizedBox(height: 15,),
          Text("Enjoy the company of amazinf pepole below a blancker of siberian start",textAlign: TextAlign.center ,style: TextStyle(color: Colors.grey),),
          SizedBox(height: 50,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.calendar_today),
              SizedBox(width: 10,),
              Text("Book for later")
            ],
          ),
          SizedBox(height: 15,),
          ButtonTheme(
            minWidth: double.infinity,   
            height: 60,         
            child: FlatButton(
              onPressed: (){},
              color: Colors.green,
              child: Text("Going", style: TextStyle(color: Colors.white),),
            ),
          )
          
        ],
      ),
    );
  }
  Widget _imagen(String urlImage){
    return Positioned(
            top:120,
            left: 30,
              child: Image(
              image:AssetImage(urlImage),
              height: 180,
              width: 300,
              fit: BoxFit.cover,
            ),
          );
  }
}