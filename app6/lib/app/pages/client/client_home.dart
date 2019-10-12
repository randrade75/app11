import 'package:flutter/material.dart';
import 'package:app10/app/pages/maps/maps_page.dart';
import 'package:app10/app/pages/client/client_store_list.dart';
import 'package:app10/app/pages/client/client_points.dart';

void main() {
  runApp(ClientHome());
}

class ClientHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.shopping_basket)),
                Tab(icon: Icon(Icons.map)),
                Tab(icon: Icon(Icons.monetization_on)),
              ],
            ),
            title: Text('Junte e Ganhe'),
          ),
          body: TabBarView(
            children: [
              StoreList(),
              MapsPage(),
              ClientPoints(),
            ],
          ),
        ),
      ),
    );
  }
}