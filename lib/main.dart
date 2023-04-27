import 'package:flutter/material.dart';

void main()
{
  runApp(Myapp()) ;
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Chips"),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 118.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Chip(
                label: Text("Delete"),
                onDeleted: (){
                  print("Deleted") ;
                },
                ),
              Chip(
                label: Text("Add"),
                deleteIcon: Icon(Icons.add),
                onDeleted: (){
                  print("Added") ;
                },
              ),
              Chip(
                label: Text("Copy"),
                deleteIcon: Icon(Icons.copy),
                onDeleted: (){
                  print("Copied") ;
                },
              ),
              Chip(
                label: Text("Paste"),
                deleteIcon: Icon(Icons.paste),
                onDeleted: (){
                  print("Pasted") ;
                },
              ),

            ],
          ),
        ),
        )
      ) ;
  }
}
