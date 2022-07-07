import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Using stack overlaps the widget on the top of each other 
        child: Container(
          width: 400,
          height: 700,
          color: Colors.grey,
          child: Stack(
            /* fit property of stack allows us to give three types of values. Among then using StackFit.loose allows the widgets from having there own height and width but restricting them from going over the height and width assigned for the parent widget */
            // fit: StackFit.loose,

            // on using StackFit.expand allows the 'non-positioned' widget to take the maximum height and width that it can possibly have 
            fit: StackFit.expand,
            // we can align the stack widget using alignment property where we have bottomCenter, topleft, topright....center 
            alignment: Alignment.topRight,
            
            children: [
              // Positiob Widget can be used to align the Widgets in much more contained way or more proper way 

                      Container(
                        width: 200,
                        height: 200,
                        color: Colors.red,
                      ),
                    
                    Positioned(
                      //giving a widget bottom:0 and right:0 will align it to the bottom right of the parent widget in our case the container widget
                      /*All properties Positioned Widget

                      Properties that deal with vertical axis - we can only assign two properties at a time

                      A. top:
                      B. height:
                      C. bottom:
                      
                      Properties that deal with horizontal axis - we can only assign two properties at a time
                      

                      a. left:
                      b. width:
                      c. right:
                  */

                  //Assigning height and width to the positioned widget ovverides the propety of it's child widget . In this case the  Container Widget
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 90,
                        height: 90,
                        color: Colors.blue,
                      ),
                    ),
            ],
          ),
        ),
      )
    );
    
  }
}