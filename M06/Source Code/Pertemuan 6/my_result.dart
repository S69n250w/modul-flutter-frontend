import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'my_provider.dart';

class MyResault extends StatefulWidget {
  const MyResault({super.key});

  @override
  State<MyResault> createState() => _MyResaultState();
}

class _MyResaultState extends State<MyResault> {
  @override
  Widget build(BuildContext context) {
    var prov2 = Provider.of<mySpinnerItems>(context);
    var prov3 = Provider.of<MyUserData>(context);
    return WillPopScope(
      onWillPop: () {
        prov2.selectedValue = null;
        //trigger leaving and use own data
        Navigator.pop(context, false);

        //we need to return a future
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(centerTitle: true, title: Text("Hasil")),
        body: Center(
          child: Text("Nama ${prov3.nama} dengan jenis kelamin " +
              "${prov3.jk} telah bekerja sebagai" +
              " ${prov2.selectedValue}"),
        ),
      ),
    );
  }
}
