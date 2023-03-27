import 'package:flutter/material.dart';

class note_detail extends StatefulWidget {
  note_detail({super.key, required this.appBar});
  String appBar;
  static var _priority = ["High", "Low"];
  TextEditingController first = TextEditingController();
  TextEditingController second = TextEditingController();

  @override
  State<note_detail> createState() => _note_detailState();
}

class _note_detailState extends State<note_detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Edit note")),
      body: ListView(children: [
        ListTile(
          title: DropdownButton(
              items: note_detail._priority.map((String dropdownitems) {
                return DropdownMenuItem<String>(
                    value: dropdownitems, child: Text(dropdownitems));
              }).toList(),
              value: "Low",
              onChanged: (value) {
                setState(() {
                  debugPrint("User selected $value");
                });
              }),
        ),
        TextFormField(
          controller: widget.first,
          decoration: InputDecoration(
              label: Text("Task"),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(21))),
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          controller: widget.second,
          decoration: InputDecoration(
              label: Text("Description"),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(21))),
        ),
        Row(
          children: [
            Expanded(
                child: ElevatedButton(
                    onPressed: () {}, child: const Text("Save"))),
            const SizedBox(
              width: 5,
            ),
            Expanded(
                child: ElevatedButton(
                    onPressed: () {}, child: const Text("Delete"))),
          ],
        )
      ]),
    );
  }
}
