import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pertemuan%207/my_body2.dart';
import 'package:flutter_application_1/Pertemuan%207/my_home.dart';
import 'package:provider/provider.dart';

import 'Pertemuan 7/my_prov.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => MyDataList())],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHome(),
    );
  }
}
