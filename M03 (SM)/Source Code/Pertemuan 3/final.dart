import 'package:flutter/material.dart';

class FinishActv extends StatefulWidget {
  const FinishActv({super.key});

  @override
  State<FinishActv> createState() => _FinishActvState();
}

class _FinishActvState extends State<FinishActv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Finish"), centerTitle: true),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Finish"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.popUntil(context, (route) => route.isFirst);
                  },
                  child: Text("Done"))
            ],
          )
        ],
      )),
    );
  }
}
