import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pertemuan%204/MyProvider.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<MyProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: ListTile(
        title: Text(prov.tfname.text),
        subtitle: Text(prov.tfnim.text),
        leading: CircleAvatar(
          child: Text('${prov.tfumur.text}'),
        ),
      ),
    );
  }
}
