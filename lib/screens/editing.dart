import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;

import 'package:Fovel/collections/novel.dart';

class Editing extends StatefulWidget {
  const Editing({super.key});

  @override
  State<Editing> createState() => _EditingState();
}

class _EditingState extends State<Editing> {
  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)!.settings.arguments as Map;
    final db = data["db"];
    late quill.QuillController _controller;

    if (data["novel"] != null) {
      // ignore: no_leading_underscores_for_local_identifiers
      _controller = quill.QuillController(
          document: quill.Document.fromJson(jsonDecode(data["novel"])),
          selection: const TextSelection.collapsed(offset: 0));
    } else {
      _controller = quill.QuillController.basic();
    }

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () async {
            // some saving code here
            if (data["id"] != null) {
              await db.saveNovel(Novel()
                ..novelId = data["id"]
                ..title = data["title"]
                ..description = data["description"]
                ..pictureDir = data["pictureDir"]
                ..novel = jsonEncode(_controller.document.toDelta().toJson()));
            } else {
              await db.saveNovel(Novel()
                ..title = data["title"]
                ..description = data["description"]
                ..pictureDir = data["pictureDir"]
                ..novel = jsonEncode(_controller.document.toDelta().toJson()));
            }

            // ignore: use_build_context_synchronously
            Navigator.pop(context);
          },
          icon: const Icon(Icons.save),
          label: const Text("Save"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Image.file(
                    File(data["pictureDir"]),
                    height: 200,
                    width: 100,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          data["title"],
                          style: const TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        Text(
                          data["description"],
                          style: const TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25,),
              quill.QuillToolbar.basic(controller: _controller),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: quill.QuillEditor.basic(
                    controller: _controller,
                    readOnly: false,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
