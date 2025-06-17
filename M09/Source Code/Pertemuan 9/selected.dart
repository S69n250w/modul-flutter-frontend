import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Pertemuan%209/MyDrawer.dart';
import 'package:flutter_application_1/Pertemuan%209/my_provider.dart';
import 'package:provider/provider.dart';

class MySelected extends StatefulWidget {
  const MySelected({super.key});

  @override
  State<MySelected> createState() => _MySelectedState();
}

class _MySelectedState extends State<MySelected> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Selected")),
      body: Center(
        child: Text("Text"),
      ),
      drawer: MyDrawer(),
    );
  }
}
