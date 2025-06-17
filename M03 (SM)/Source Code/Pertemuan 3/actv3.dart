import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pertemuan%203/final.dart';

class Actv3 extends StatefulWidget {
  const Actv3({super.key});

  @override
  State<Actv3> createState() => _Actv3State();
}

class _Actv3State extends State<Actv3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("3"), centerTitle: true),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Activity 3"),
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => FinishActv()));
                  },
                  child: Text("Next")),
            ],
          )
        ],
      )),
    );
  }
}
