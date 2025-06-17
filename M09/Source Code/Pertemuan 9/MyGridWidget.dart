import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pertemuan%209/my_provider.dart';
import 'package:provider/provider.dart';

class MyGridView extends StatefulWidget {
  const MyGridView({super.key, required this.isGenap});
  final bool isGenap;

  @override
  State<MyGridView> createState() => _MyGridViewState();
}

class _MyGridViewState extends State<MyGridView> {
  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<MyData>(context);
    return GridView.builder(
      itemCount: 10,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 3)),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (widget.isGenap) {
              prov.genap = index;
            } else {
              prov.ganjil = index;
            }
          },
          child: Card(
            color: widget.isGenap
                ? prov.genap == index * 2
                    ? Colors.red
                    : Colors.white
                : prov.ganjil == index * 2 + 1
                    ? Colors.red
                    : Colors.white,
            child: Container(
                width: 200,
                height: 200,
                child: Center(
                  child: widget.isGenap
                      ? Text("${index * 2}")
                      : Text("${index * 2 + 1}"),
                )),
          ),
        );
      },
    );
  }
}
