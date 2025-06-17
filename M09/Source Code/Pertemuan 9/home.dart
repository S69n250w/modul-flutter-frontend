import 'dart:io';

import 'package:custom_bottom_sheet/custom_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pertemuan%209/MyDrawer.dart';
import 'package:flutter_application_1/Pertemuan%209/MyGridWidget.dart';
import 'package:flutter_application_1/Pertemuan%209/selected.dart';
import 'package:provider/provider.dart';

import 'my_provider.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<MyData>(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.numbers),
              text: "Genap",
            ),
            Tab(icon: Icon(Icons.numbers), text: "Ganjil"),
          ]),
        ),
        drawer: MyDrawer(),
        body: TabBarView(
            children: [MyGridView(isGenap: true), MyGridView(isGenap: false)]),
      ),
    );
  }
}
