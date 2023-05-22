import 'dart:html';
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: Home()
));


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('stacked buttons'),
        centerTitle: true,
        //backgroundColor: Colors.grey[500],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("<put an image here>"),
              fit: BoxFit.cover
            ),
        ),// Foreground widget here
      ),
      floatingActionButton: Wrap( //will break to another line on overflow
        direction: Axis.horizontal, //use vertical to show  on vertical axis
        children: <Widget>[
              Container( 
                margin:const EdgeInsets.all(5),
                child: FloatingActionButton(
                  onPressed: (){
                      //action code for button 1
                  },
                  child: const Icon(Icons.add),
                )
              ), //button first

              Container( 
                margin:const EdgeInsets.all(5),
                child: FloatingActionButton(
                  onPressed: (){
                      //action code for button 2
                  },
                  backgroundColor: Colors.deepPurpleAccent,
                  child: const Icon(Icons.add),
                )
              ), // button second

              Container(
                margin:const EdgeInsets.all(5),
                child: FloatingActionButton(
                  onPressed: (){
                      //action code for button 3
                  },
                  backgroundColor: Colors.deepOrangeAccent,
                  child: const Icon(Icons.add),
                )
              ), // button third

              // Add more buttons here
        ],),
    );
  }
}
