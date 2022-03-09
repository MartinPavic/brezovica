import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: const [
        Text("Breza breza", style: TextStyle(color: Colors.black),),
        SizedBox(height: 20,),
        Text("Ajmo breza")
      ],),
    );
  }
  
}