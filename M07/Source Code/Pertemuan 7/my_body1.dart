import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pertemuan%207/my_prov.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';

class MyBody1 extends StatefulWidget {
  const MyBody1({super.key});

  @override
  State<MyBody1> createState() => _MyBody1State();
}

class _MyBody1State extends State<MyBody1> {
  @override
  Widget build(BuildContext context) {
    TextEditingController tv1 = TextEditingController();
    var prov = Provider.of<MyDataList>(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text("Welcome"),
            Expanded(
                flex: 1,
                child: TextField(
                  controller: tv1,
                  decoration: InputDecoration(label: Text("Nama")),
                )),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  prov.addNamaTamu(tv1.text);

                  Fluttertoast.showToast(
                      msg: 'Tamu ${tv1.text}  ditambahkan',
                      toastLength: Toast.LENGTH_LONG);
                  setState(() {
                    tv1.text = "";
                  });
                },
                child: Text("Add Guest"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
