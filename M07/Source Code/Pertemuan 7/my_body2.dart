import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import 'my_prov.dart';

class MyBody2 extends StatefulWidget {
  const MyBody2({super.key});

  @override
  State<MyBody2> createState() => _MyBody2State();
}

class _MyBody2State extends State<MyBody2> {
  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<MyDataList>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ListView(
            children: List.generate(
                prov.namaTamu.length,
                (index) => ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color.fromARGB(
                            255,
                            math.Random().nextInt(255),
                            math.Random().nextInt(255),
                            math.Random().nextInt(255)),
                        child: Text(prov.namaTamu[index].substring(0, 1)),
                      ),
                      title: Text(prov.namaTamu[index]),
                    )),
          ),
        ],
      ),
    );
  }
}
