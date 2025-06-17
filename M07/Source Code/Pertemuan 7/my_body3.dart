import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyBody3 extends StatelessWidget {
  const MyBody3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Align(
          alignment: Alignment.center,
          child: CircleAvatar(
            child: Text("S"),
          ),
        ),
        Text("Nama : Sunaryo"),
        Text("NIM : 081111180")
      ],
    );
  }
}
