import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pertemuan%209/home.dart';
import 'package:flutter_application_1/Pertemuan%209/selected.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(children: [
      DrawerHeader(
          child: Column(children: [
        CircleAvatar(child: Text("A")),
        Text("Nama"),
        DropdownButton(items: [
          DropdownMenuItem(child: Text("Agus")),
          DropdownMenuItem(child: Text("Dian"))
        ], onChanged: (value) {})
      ])),
      ListTile(
        leading: Icon(Icons.home),
        title: Text("Home"),
        onTap: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => MyHome()));
        },
      ),
      ListTile(
        leading: Icon(Icons.select_all),
        title: Text("Selected"),
        onTap: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => MySelected()));
        },
      ),
      Divider(),
      ListTile(
        leading: Icon(Icons.exit_to_app),
        title: Text("Exit"),
      ),
    ]));
  }
}
