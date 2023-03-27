import 'package:database_apk/screens/note_details.dart';
import 'package:flutter/material.dart';

class Note_list extends StatefulWidget {
  const Note_list({super.key});

  @override
  State<Note_list> createState() => _Note_listState();
}

class _Note_listState extends State<Note_list> {
  void navigator(String title) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => note_detail(appBar: title),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Title")),
      body: get_info(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            navigator("Adding element");
            debugPrint("Floating action button clicked");
          },
          child: const Icon(
            Icons.add,
          )),
    );
  }

  ListView get_info() {
    return ListView.builder(
      itemCount: null,
      itemBuilder: (context, index) {
        return Card(
          elevation: 2.0,
          child: ListTile(
            title: const Text(
              "Dummy Title",
            ),
            subtitle: const Text("Dummy Title"),
            trailing: const Icon(
              Icons.delete,
              color: Colors.grey,
            ),
            onTap: () {
              navigator("Editing element");
              debugPrint("Listtile pressed");
            },
            leading: const CircleAvatar(
              backgroundColor: Colors.yellow,
              child: Icon(Icons.keyboard_arrow_right_outlined),
            ),
          ),
        );
      },
    );
  }
}
