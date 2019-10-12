import 'package:flutter/material.dart';

class ClientPoints extends StatefulWidget {
  ClientPoints({Key key}) : super(key: key);

  _ClientPointsState createState() => _ClientPointsState();
}

class _ClientPointsState extends State<ClientPoints> {
  final TextStyle dropdownMenuItem =
      TextStyle(color: Colors.black, fontSize: 18);

  final primary = Color(0xff696b9e);
  final secondary = Color(0xfff29a94);

  final List<Map> schoolLists = [
    {
      "name": "Edgewick Scchol",
      "location": "572 Statan NY, 12483",
      "type": "Higher Secondary School",
      "logoText":
          "https://cdn.pixabay.com/photo/2017/03/16/21/18/logo-2150297_960_720.png"
    },
    {
      "name": "Xaviers International",
      "location": "234 Road Kathmandu, Nepal",
      "type": "Higher Secondary School",
      "logoText":
          "https://cdn.pixabay.com/photo/2017/01/31/13/14/animal-2023924_960_720.png"
    },
    {
      "name": "Kinder Garden",
      "location": "572 Statan NY, 12483",
      "type": "Play Group School",
      "logoText":
          "https://cdn.pixabay.com/photo/2016/06/09/18/36/logo-1446293_960_720.png"
    },
    {
      "name": "WilingTon Cambridge",
      "location": "Kasai Pantan NY, 12483",
      "type": "Lower Secondary School",
      "logoText":
          "https://cdn.pixabay.com/photo/2017/01/13/01/22/rocket-1976107_960_720.png"
    },
    {
      "name": "Fredik Panlon",
      "location": "572 Statan NY, 12483",
      "type": "Higher Secondary School",
      "logoText":
          "https://cdn.pixabay.com/photo/2017/03/16/21/18/logo-2150297_960_720.png"
    },
    {
      "name": "Whitehouse International",
      "location": "234 Road Kathmandu, Nepal",
      "type": "Higher Secondary School",
      "logoText":
          "https://cdn.pixabay.com/photo/2017/01/31/13/14/animal-2023924_960_720.png"
    },
    {
      "name": "Haward Play",
      "location": "572 Statan NY, 12483",
      "type": "Play Group School",
      "logoText":
          "https://cdn.pixabay.com/photo/2016/06/09/18/36/logo-1446293_960_720.png"
    },
    {
      "name": "Campare Handeson",
      "location": "Kasai Pantan NY, 12483",
      "type": "Lower Secondary School",
      "logoText":
          "https://cdn.pixabay.com/photo/2017/01/13/01/22/rocket-1976107_960_720.png"
    },
  ];
 @override
   Widget build(BuildContext context) {
    
        return Scaffold(
          backgroundColor: Color(0xfff0f0f0),
          body: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: <Widget>[
                
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    

                child:
                  
                 ListView.builder(
                    itemCount: schoolLists.length,
                    itemBuilder: (BuildContext context, int index) {
                      return buildList(context, index);
                    }),
              ),
              
            ],
          ),
        ),
      ),
    );
  }


 Widget buildList(BuildContext context, int index) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      width: double.infinity,
      height: 120,
      margin: EdgeInsets.symmetric(vertical: 3, horizontal: 5),
      padding: EdgeInsets.symmetric(vertical: 3, horizontal: 5),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 150,
            height: 150,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 3, color: secondary)),
            child: Image.network(
              "https://cdn.pixabay.com/photo/2017/03/16/21/18/logo-2150297_960_720.png",
              width: 50,
              height: 50,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  schoolLists[index]['name'],
                  style: TextStyle(
                      color: primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.location_on,
                      color: secondary,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(schoolLists[index]['location'],
                        style: TextStyle(
                            color: primary, fontSize: 13, letterSpacing: .3)),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.school,
                      color: secondary,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(schoolLists[index]['type'],
                        style: TextStyle(
                            color: primary, fontSize: 13, letterSpacing: .3)),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  } 
} 


