import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pertemuan%206/my_provider.dart';
import 'package:flutter_application_1/Pertemuan%206/my_result.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:provider/provider.dart';

class MySwitch extends StatefulWidget {
  const MySwitch({super.key});

  @override
  State<MySwitch> createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch> {
  String? tmp;
  TextEditingController tv1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var prov1 = Provider.of<MySwitchProv>(context);
    var prov2 = Provider.of<mySpinnerItems>(context);
    var prov3 = Provider.of<MyUserData>(context);
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Switch and Spinner")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Dark Mode"),
                Switch(
                  value: prov1.switchValue,
                  onChanged: (value) {
                    prov1.switchValue = value;
                  },
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(flex: 1, child: Text("Pekerjaan")),
                Expanded(
                  flex: 4,
                  child: DropdownButtonFormField(
                    value: prov2.selectedValue,
                    items: List.generate(
                        prov2.listPekerjaan.length,
                        (index) => DropdownMenuItem(
                            value: prov2.listPekerjaan[index],
                            child: Text(prov2.listPekerjaan[index]))),
                    onChanged: (value) {
                      prov2.selectedValue = value;
                    },
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                    child: TextField(
                  controller: tv1,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), label: Text("Nama")),
                ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("L"),
                Radio(
                    value: "Laki-laki",
                    groupValue: prov3.jk,
                    onChanged: ((value) {
                      prov3.jk = value;
                    })),
                Text("P"),
                Radio(
                    value: "Perempuan",
                    groupValue: prov3.jk,
                    onChanged: ((value) {
                      prov3.jk = value;
                    }))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Checkbox(
                  value: prov3.setuju,
                  onChanged: (value) {
                    prov3.setuju = value;
                  },
                ),
                Text("Setuju ?")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: prov3.setuju
                    ? () {
                        prov3.nama = tv1.text;
                        tv1.text = "";
                        prov3.setuju = false;
                        prov3.jk = "";
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => MyResault()));
                      }
                    : null,
                child: Text("Submit")),
          )
        ]),
      ),
    );
  }
}
