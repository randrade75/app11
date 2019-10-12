import 'package:flutter/material.dart';
import 'package:app10/app/pages/home/home_container.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:
       AppBar(
       
        actions: <Widget>[
         Row(mainAxisAlignment: MainAxisAlignment.start,  
        children: [
         Text ('xx'),
         IconButton(alignment: Alignment.bottomLeft, icon:Icon(Icons.menu),
         onPressed:() {
              }
              )

        ],)

       ]
       ),
      
   
      body:
      
      Column (
          

        children: <Widget>[

         new Headerlist()

          

        ],
      ),
    );
  }
}
