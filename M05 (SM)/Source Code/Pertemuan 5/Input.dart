import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  const Input({super.key});

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  TextEditingController tf1 = TextEditingController();
  String _SelectedRadio = "Laki-laki";
  List<bool?> CheckBox1 = [false, false, false];
  List<bool?> FilterChips1 = [false, false, false];
  List<bool?> _ChooseChips1 = [false, false, false];

  List<String> myChipsInput = [];
  List<bool> myChipsState = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Input Data")),
      body: Column(children: [
        Row(
          children: [
            Radio(
              value: "Laki-laki",
              groupValue: _SelectedRadio,
              onChanged: (value) {
                setState(() {
                  _SelectedRadio = value!;
                });
              },
            ),
            Text("L"),
            Radio(
              value: "Perempuan",
              groupValue: _SelectedRadio,
              onChanged: (value) {
                setState(() {
                  _SelectedRadio = value!;
                });
              },
            ),
            Text("P")
          ],
        ),
        for (int i = 0; i < CheckBox1.length; i++)
          Row(
            children: [
              Checkbox(
                value: CheckBox1[i],
                onChanged: (value) {
                  setState(() {
                    CheckBox1[i] = value;
                  });
                },
              ),
              Text("Text $i")
            ],
          ),
        Row(
          children: [
            Expanded(
                flex: 5,
                child: TextField(
                  controller: tf1,
                )),
            Expanded(
                flex: 1,
                child: ActionChip(
                  label: Text("Add"),
                  onPressed: (() {
                    setState(() {
                      myChipsInput.add(tf1.text);
                      myChipsState.add(false);
                      tf1.text = "";
                    });
                  }),
                ))
          ],
        ),
        Wrap(
          children: List.generate(
              myChipsInput.length,
              (index) => Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: InputChip(
                      label: Text(myChipsInput[index]),
                      selected: myChipsState[index],
                      deleteIcon: Icon(Icons.delete),
                      onPressed: () {
                        setState(() {
                          myChipsState[index] = !myChipsState[index];
                        });
                      },
                      onDeleted: myChipsState[index]
                          ? () {
                              setState(() {
                                myChipsInput.removeAt(index);
                                myChipsState.removeAt(index);
                              });
                            }
                          : null,
                    ),
                  )),
        ),
        Row(
            children: List.generate(
                FilterChips1.length,
                (index) => FilterChip(
                      selected: FilterChips1[index]!,
                      label: Text("Text $index"),
                      onSelected: (value) {
                        setState(() {
                          FilterChips1[index] = value;
                        });
                      },
                    ))),
        Row(
          children: List.generate(
              _ChooseChips1.length,
              (index) => ChoiceChip(
                    selectedColor: Colors.blueAccent,
                    label: Text("Text $index"),
                    selected: _ChooseChips1[index]!,
                    onSelected: ((value) {
                      setState(() {
                        _ChooseChips1.fillRange(0, _ChooseChips1.length, false);
                        _ChooseChips1[index] = true;
                      });
                    }),
                  )),
        )
      ]),
    );
  }
}
