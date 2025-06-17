import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pertemuan%203/actv3.dart';

class Actv2 extends StatefulWidget {
  const Actv2({super.key});

  @override
  State<Actv2> createState() => _Actv2State();
}

class _Actv2State extends State<Actv2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("2"), centerTitle: true),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Activity 2"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Back")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Actv3()));
                  },
                  child: Text("Next")),
            ],
          )
        ],
      )),
    );
  }
}
