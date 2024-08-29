import 'package:flutter/material.dart';

class TShirt extends StatefulWidget {
  const TShirt({super.key});

  @override
  State<TShirt> createState() => _TShirtState();
}

class _TShirtState extends State<TShirt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.cyanAccent,
              border: Border(
                  bottom: BorderSide(
                strokeAlign: 2,
              ))),
          child: Text("Hallo Hossam"),
        ),
      ),
    );
  }
}
