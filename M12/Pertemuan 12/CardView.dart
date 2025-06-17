import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pertemuan%2012/ButtomSheet.dart';
import 'package:flutter_application_1/Pertemuan%2012/JsonToObject.dart';
import 'package:provider/provider.dart';

import 'Provider12.dart';

class MyCardView extends StatefulWidget {
  const MyCardView({super.key});

  @override
  State<MyCardView> createState() => _MyCardViewState();
}

class _MyCardViewState extends State<MyCardView> {
  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<Provider12>(context);
    var tmp = prov.jsonData['data'];
    MyBottomSheet MBS = MyBottomSheet();
    return SizedBox(
      height: 250,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: tmp.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Device user = Device.fromJson(tmp[index]);
              MBS.getBottomSheet(context, user);
            },
            child: Card(
              child: Container(
                width: 185,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Model Device : ${tmp[index]['model']}"),
                      Image.network(
                        tmp[index]['img'],
                        width: 90,
                        height: 100,
                      ),
                      Text("Harga : ${tmp[index]['price']}"),
                      Text("Rating : ${tmp[index]['rating']}/5"),
                      Text("Developer : ${tmp[index]['developer']}"),
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
