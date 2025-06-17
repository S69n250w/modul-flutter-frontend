import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pertemuan%2012/Provider12.dart';
import 'package:provider/provider.dart';

import 'ButtomSheet.dart';
import 'JsonToObject.dart';

class MyTableView extends StatefulWidget {
  const MyTableView({super.key});

  @override
  State<MyTableView> createState() => _MyTableViewState();
}

class _MyTableViewState extends State<MyTableView> {
  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<Provider12>(context);
    var tmp = prov.jsonData['data'];
    MyBottomSheet MBS = MyBottomSheet();
    return Table(
      border: TableBorder.all(
          width: 2, color: Colors.black, style: BorderStyle.solid),
      children: [
        const TableRow(children: [
          Column(children: [
            Text("Model", style: TextStyle(fontWeight: FontWeight.bold))
          ]),
          Column(children: [
            Text("Developer", style: TextStyle(fontWeight: FontWeight.bold))
          ]),
          Column(children: [
            Text("Price", style: TextStyle(fontWeight: FontWeight.bold))
          ]),
          Column(children: [
            Text("Rating", style: TextStyle(fontWeight: FontWeight.bold))
          ]),
          Column(children: [
            Text("Image", style: TextStyle(fontWeight: FontWeight.bold))
          ]),
        ]),
        for (int index = 0; index < prov.jsonData['data'].length; index++)
          TableRow(children: [
            Column(children: [Text("${tmp[index]['model']}")]),
            Column(children: [Text("${tmp[index]['developer']}")]),
            Column(children: [Text("Rp. ${tmp[index]['price']}")]),
            Column(children: [Text("${tmp[index]['rating']} / 5")]),
            Column(children: [
              GestureDetector(
                  onTap: () {
                    Device user = Device.fromJson(tmp[index]);
                    MBS.getBottomSheet(context, user);
                  },
                  child: Image.network("${tmp[index]['img']}"))
            ])
          ])
      ],
    );
  }
}
