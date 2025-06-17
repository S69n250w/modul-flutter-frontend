import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pertemuan%207/my_body1.dart';
import 'package:flutter_application_1/Pertemuan%207/my_body2.dart';
import 'package:flutter_application_1/Pertemuan%207/my_body3.dart';
import 'package:flutter_application_1/Pertemuan%207/my_prov.dart';
import 'package:provider/provider.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List _myBody = [MyBody1(), MyBody2(), MyBody3()];
  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<MyDataList>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Pertemuan 7"),
        centerTitle: true,
        actions: [
          Stack(alignment: AlignmentDirectional.center, children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
            Positioned(
              top: 10,
              right: 5,
              child: Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.yellow),
                child: Text(
                  prov.countNotif.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.red, fontSize: 10),
                ),
              ),
            )
          ]),
          IconButton(
              onPressed: () {
                prov.restartNotif();
              },
              icon: Icon(Icons.recycling)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: _myBody[prov.currentIdx],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          prov.addcountNotif();
        },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: prov.currentIdx,
          onTap: (value) {
            prov.currentIdx = value;
          },
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "List"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person")
          ]),
    );
  }
}
