
import 'package:flutter/material.dart';


class Headerlist extends StatelessWidget {
  @override
 
 Widget  build(BuildContext context)  {

      // wrap everything in a purple container
      return Container(
        margin: EdgeInsets.all(16.0),
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.purple[900],
          border: Border.all(),
          borderRadius: BorderRadius.all(Radius.circular(3.0)),
        ),

        // column of three rows
        child: Column(

          // this makes the column height hug its content
          mainAxisSize: MainAxisSize.min,
          children: [

            // first row
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Icon(Icons.favorite,
                    color: Colors.green,
                  ),
                ),
                Text(
                    'BEAMS1',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),

            // second row (single item)
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 0,
              ),
              child: Text('Send programmable push notifications to iOS and Android devices with delivery and open rate tracking built in.',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),

            // third row
            Row(
              children: [
                Text('EXPLORE BEAMS',
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Icon(Icons.arrow_forward,
                    color: Colors.green,
                  ),
                ),
              ],
            ),

          ],
        ),
      );
    
    
    
    }

Widget  build2(BuildContext context)  {

      // wrap everything in a purple container
      return Container(
        margin: EdgeInsets.all(160.0),
        padding: EdgeInsets.all(160.0),
        decoration: BoxDecoration(
          color: Colors.purple[600],
          border: Border.all(),
          borderRadius: BorderRadius.all(Radius.circular(3.0)),
        ),

        // column of three rows
        child: Column(

          // this makes the column height hug its content
          mainAxisSize: MainAxisSize.min,
          children: [

            // first row
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 18.0),
                  child: Icon(Icons.favorite,
                    color: Colors.green,
                  ),
                ),
                Text(
                    'BEAMS2',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),

            // second row (single item)
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 160.0,
                horizontal: 0,
              ),
              child: Text('Send2 programmable push notifications to iOS and Android devices with delivery and open rate tracking built in.',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),

            // third row
            Row(
              children: [
                Text('EXPLORE BEAMS',
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: Icon(Icons.arrow_forward,
                    color: Colors.green,
                  ),
                ),
              ],
            ),

          ],
        ),
      );
    
    
    
    }


  
}