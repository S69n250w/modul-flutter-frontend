import 'package:flutter/material.dart';

class MyCustomListTile extends StatefulWidget {
  const MyCustomListTile({super.key, required this.data});
  final data;

  @override
  State<MyCustomListTile> createState() => _MyCustomListTileState();
}

class _MyCustomListTileState extends State<MyCustomListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(widget.data['img']),
      ),
      subtitle: Text("${widget.data['price']}"),
      title: Row(
        children: [
          Expanded(flex: 7, child: Text("${widget.data['model']}")),
          Expanded(
              flex: 1,
              child: PopupMenuButton(
                  itemBuilder: (BuildContext context) => [
                        PopupMenuItem(child: Text("Edit")),
                        PopupMenuItem(child: Text("Remove")),
                      ]))
        ],
      ),
    );
  }
}
