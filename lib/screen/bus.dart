import 'package:brezovica/constants.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class BusScreen extends StatefulWidget {
  const BusScreen({Key? key}) : super(key: key);

  @override
  _BusScreenState createState() => _BusScreenState();
}

class _BusScreenState extends State<BusScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        children: [
          GlassmorphicContainer(
            width: 450,
            height: 250,
            borderRadius: 20,
            blur: 20,
            //alignment: Alignment.centerLeft,
            border: 2,
            linearGradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  const Color(0xFFffffff).withOpacity(0.3),
                  const Color(0xFFFFFFFF).withOpacity(0.15),
                ],
                stops: const [
                  0.1,
                  1,
                ]),
            borderGradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                const Color(0xFFffffff).withOpacity(0.5),
                const Color((0xFFFFFFFF)).withOpacity(0.5),
              ],
            ),
            child: Column(children: const [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Bus',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
              ElevatedButton(onPressed: onPressed, child: null)
            ]),
          ),
        ],
      ),
    );
  }
}

void onPressed() {
  print("yo");
}