import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Pertemuan%2011/SetttingProvider.dart';
import 'package:provider/provider.dart';

class MySetting extends StatefulWidget {
  const MySetting({super.key});

  @override
  State<MySetting> createState() => _MySettingState();
}

class _MySettingState extends State<MySetting> {
  @override
  Widget build(BuildContext context) {
    var settingProv = Provider.of<SettingProvider>(context);
    List<String> Use = settingProv.UseLanguage;

    return Scaffold(
      appBar: AppBar(title: Text(Use[0])),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              Use[1],
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            ListTile(
              title: Text(Use[2]),
              subtitle: Text("Google"),
            ),
            SwitchListTile(
              title: Text(Use[3]),
              value: settingProv.PopUp,
              onChanged: (value) {
                settingProv.PopUp = value;
              },
            ),
            ListTile(
              title: Text(Use[4]),
              subtitle: Text("16:00 WIB"),
            ),
            Divider(),
            Text(
              Use[5],
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            ListTile(
              title: Row(children: [
                Expanded(flex: 7, child: Text(Use[6])),
                Expanded(
                    flex: 1,
                    child: PopupMenuButton(
                        icon: const Icon(Icons.swipe_right),
                        onSelected: (value) {
                          settingProv.language = value;
                          settingProv.ubahBahasa(value);
                        },
                        itemBuilder: (BuildContext context) => List.generate(
                              settingProv.listOfLanguange.length,
                              (index) => PopupMenuItem(
                                value: settingProv.listOfLanguange[index],
                                child: Text(
                                    "${settingProv.listOfLanguange[index]}"),
                              ),
                            ))),
              ]),
              subtitle: Text(settingProv.language),
            ),
            ListTile(
              title: Text(Use[7]),
            ),
            Divider(),
            ListTile(
              title: Text(Use[8]),
              onTap: () {
                SystemNavigator.pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
