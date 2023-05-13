import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddNovel extends StatefulWidget {
  const AddNovel({super.key});

  @override
  State<AddNovel> createState() => _AddNovelState();
}

class _AddNovelState extends State<AddNovel> {
  late TextEditingController _titleTextController;
  late TextEditingController _descriptionTextController;

  final ImagePicker picker = ImagePicker();
  File? image;

  String? get _titleErrorText {
    final text = _titleTextController.value.text;

    if (text.isEmpty) {
      return "Title can't be empty";
    }

    return null;
  }

  void _getImage() async {
    XFile? pickedImage = await picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      image = File(pickedImage.path);
    }
  }

  bool _submitted = false;

  @override
  void initState() {
    super.initState();
    _titleTextController = TextEditingController();
    _descriptionTextController = TextEditingController();
  }

  @override
  void dispose() {
    _titleTextController.dispose();
    _descriptionTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)!.settings.arguments as Map;
    final db = data["db"];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Add a novel"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _titleTextController,
              decoration: InputDecoration(
                  labelText: "Title",
                  errorText: _submitted ? _titleErrorText : null,
                  suffixIcon: IconButton(
                      onPressed: () {
                        _titleTextController.clear();
                      },
                      icon: const Icon(Icons.clear))),
              autofocus: true,
              onChanged: (value) => setState(() {}),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _descriptionTextController,
              decoration: const InputDecoration(
                labelText: "Description",
              ),
              keyboardType: TextInputType.multiline,
              maxLines: null,
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                _getImage();
              },
              child: const Text("Pick Image"),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  setState(() {
                    _submitted = true;
                  });
                  if (_titleErrorText == null && image != null) {
                    await Navigator.pushReplacementNamed(context, "/editing",
                        arguments: {
                          "db": db,
                          "title": _titleTextController.value.text,
                          "description": _descriptionTextController.value.text,
                          "pictureDir": image!.path,
                        });
                  }
                },
                child: const Text("Create"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
