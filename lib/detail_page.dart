import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'model/warmindo.dart';

class DetailPage extends StatelessWidget {
  final String name;
  final String image;
  final String desc;
  final int price;
  final String category;
  final double ratings;
  final int reviewer;
  final int sold;

  const DetailPage({
    Key? key,
    required this.name,
    required this.image,
    required this.desc,
    required this.price,
    required this.category,
    required this.ratings,
    required this.reviewer,
    required this.sold,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 30.0),
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.network(image),
              SizedBox(height: 16,),
              Text(name, style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 16,),
              Text("Desc :  ", style: TextStyle(fontWeight: FontWeight.normal)),
              Text(desc, style: TextStyle(fontWeight: FontWeight.normal),),
              Text(" "),
              Text("Harga : ${price}", style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 16,),
              Text(" "),
              Text("Ratings : ${ratings}",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
              Text(" "),
              Text("Reviewer : ${reviewer}",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange)),
              Text(" "),
              Text("Sold : ${sold}",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
            ],
          ),
        ),
      ),
    );
  }
}