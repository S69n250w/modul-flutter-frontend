import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

import 'ButtomSheet.dart';
import 'JsonToObject.dart';
import 'Provider12.dart';

class MyListView extends StatefulWidget {
  const MyListView({super.key});

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<Provider12>(context);
    var tmp = prov.jsonData['data'];
    MyBottomSheet MBS = MyBottomSheet();
    return ListView.builder(
        itemCount: tmp.length,
        itemBuilder: (context, index) => Column(
              children: [
                ListTile(
                  isThreeLine: true,
                  trailing: IconButton(
                      onPressed: () {
                        Device user = Device.fromJson(tmp[index]);
                        MBS.getBottomSheet(context, user);
                      },
                      icon: Icon(Icons.arrow_forward)),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${tmp[index]['model']}"),
                      // smooth_star_rating_null_safety: ^1.0.4+2
                      SmoothStarRating(
                        allowHalfRating: true,
                        starCount: 5,
                        rating: tmp[index]['rating'],
                      )
                    ],
                  ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(tmp[index]['img']),
                  ),
                  subtitle: Text(
                      "${tmp[index]['price']}\n${tmp[index]['developer']}"),
                ),
                Divider(
                  indent: 65,
                )
              ],
            ));
  }
}
