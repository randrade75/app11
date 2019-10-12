import 'package:flutter/material.dart';

class ClientStoreDetails extends StatefulWidget {
  ClientStoreDetails({Key key}) : super(key: key);

  _ClientStoreDetailsState createState() => _ClientStoreDetailsState();
}

class _ClientStoreDetailsState extends State<ClientStoreDetails> {
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
                  Container (
                     padding: EdgeInsets.only(top: 120),
                   //height: MediaQuery.of(context).padding.,
                    width: double.infinity,
                    //child: return buildList(context, index);
                  ),
    
    
                  Container(
                    padding: EdgeInsets.only(top: 220),
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    

                child:
                  
                 ListView.builder(
                    itemCount: schoolLists.length,
                    itemBuilder: (BuildContext context, int index) {
                      return buildList(context, index);
                    }),
              ),
              Container(
                height: 220,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "instuitutos",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.filter_list,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 80,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Material(
                        elevation: 4.0,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      /*   child: TextField(
                          // controller: TextEditingController(text: locations[0]),
                          cursorColor: Theme.of(context).primaryColor,
                          style: dropdownMenuItem,
                          decoration: InputDecoration(
                              hintText: "Search School",
                              hintStyle: TextStyle(
                                  color: Colors.black38, fontSize: 16),
                              prefixIcon: Material(
                                elevation: 0.0,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                child: Icon(Icons.search),
                              ),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 10)),
                        ), */
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }



    Widget buildTabBar(BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text('Junte e Ganhe'),
          bottom:
            new TabBar(tabs: <Widget>[new Text("text"), new Text("text 2")],
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
      height: 160,
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


