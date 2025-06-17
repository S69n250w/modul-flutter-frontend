import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/Pertemuan%204/Home.dart';
import 'package:flutter_application_1/Pertemuan%204/MyProvider.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<MyProvider>(context);
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Column(children: [
        TextField(
          controller: prov.tfnim,
          keyboardType: TextInputType.number,
          maxLength: 9,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              errorText: prov.isNIMmpty ? "NIM Tidak Boleh Kosong" : null,
              label: Text("NIM")),
        ),
        TextField(
          controller: prov.tfname,
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              errorText: prov.isNameEmpty ? "Nama Tidak Boleh Kosong" : null,
              label: Text("NAMA")),
        ),
        TextField(
          controller: prov.tfumur,
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              errorText: prov.isUmurEmpty ? "Umur Tidak Boleh Kosong" : null,
              label: Text("Umur")),
        ),
        ElevatedButton(
            onPressed: () {
              prov.setNameEmpty = prov.tfname.text.isEmpty;
              prov.setNimEmpty = prov.tfnim.text.isEmpty;
              prov.setUmurEmpty = prov.tfumur.text.isEmpty;

              if (!prov.isUmurEmpty && !prov.isNIMmpty && !prov.isNameEmpty) {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Home()));
              }
            },
            child: Text("Login"))
      ]),
    );
  }
}
