import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Pertemuan%2012/CardView.dart';
import 'package:flutter_application_1/Pertemuan%2012/ListView.dart';
import 'package:flutter_application_1/Pertemuan%2012/Provider12.dart';
import 'package:flutter_application_1/Pertemuan%2012/TableView.dart';
import 'package:provider/provider.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<Provider12>(context);
    return Scaffold(
      appBar: AppBar(
        title: prov.status == Status.table
            ? Text("Table")
            : prov.status == Status.list
                ? Text("List")
                : Text("Card"),
        actions: [
          PopupMenuButton(
              onSelected: (value) {
                prov.status = value;
              },
              itemBuilder: (BuildContext context) => [
                    PopupMenuItem(child: Text("Table"), value: Status.table),
                    PopupMenuItem(child: Text("List"), value: Status.list),
                    PopupMenuItem(child: Text("Card"), value: Status.card),
                  ])
        ],
      ),
      body: prov.status == Status.table
          ? MyTableView()
          : prov.status == Status.list
              ? MyListView()
              : MyCardView(),
    );
  }
}
