import 'package:flutter/material.dart';

class ContainerHeading extends StatelessWidget {
  final String text;

  const ContainerHeading({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
          color: Colors.grey.shade50,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: Offset(2,3),
            )
          ]
      ),
      child: Text(text,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontFamily: "Dela Gothic One"),),
    );
  }
}
