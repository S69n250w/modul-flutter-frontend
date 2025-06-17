import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pertemuan%2011/MyCostumListTile.dart';
import 'package:flutter_application_1/Pertemuan%2011/MySettingPage.dart';
import 'package:flutter_application_1/Pertemuan%2011/Provider11.dart';
import 'package:provider/provider.dart';

class My11Home extends StatefulWidget {
  const My11Home({super.key});

  @override
  State<My11Home> createState() => _My11HomeState();
}

class _My11HomeState extends State<My11Home> {
  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<Provider11>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu"),
        actions: [
          PopupMenuButton(
              onSelected: _selectedMenu,
              itemBuilder: (BuildContext context) => [
                    PopupMenuItem(
                      child: Text("Setting"),
                      value: "Setting",
                    ),
                    PopupMenuItem(
                      child: Text("Exit"),
                      value: "Exit",
                    ),
                  ])
        ],
      ),
      body: Column(children: [
        ExpansionTile(
            title: Text("HP"),
            children: List.generate(
                prov.dataHp['data'].length,
                (index) => Column(
                      children: [
                        MyCustomListTile(
                          data: prov.dataHp['data'][index],
                        ),
                        prov.dataHp['data'].length - 1 != index
                            ? Divider(indent: 65)
                            : Container()
                      ],
                    ))),
        ExpansionTile(
            title: Text("Laptop"),
            children: List.generate(
                prov.dataLaptop['data'].length,
                (index) => Column(
                      children: [
                        MyCustomListTile(
                          data: prov.dataHp['data'][index],
                        ),
                        prov.dataLaptop['data'].length - 1 != index
                            ? Divider(indent: 65)
                            : Container()
                      ],
                    ))),
      ]),
    );
  }

  _selectedMenu(value) {
    if (value == "Setting") {
      Navigator.push(context, MaterialPageRoute(builder: (_) => MySetting()));
    } else if (value == "Exit") {
      Navigator.pop(context);
    }
  }
}
