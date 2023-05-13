import 'dart:io';

import 'package:flutter/material.dart';
import 'package:Fovel/collections/novel.dart';

import 'package:Fovel/isar_service.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final db = IsarService();

  Future<List<Novel>> getNovels() async {
    return await db.listNovels();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Novels'),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () async {
            await Navigator.pushNamed(context, '/add_novel',
                arguments: {"db": db});
            setState(() {});
          },
          icon: const Icon(Icons.add),
          label: const Text("Create"),
        ),
        body: FutureBuilder(
          future: getNovels(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: const Text("Error"),
                    content: Text("Error Message: ${snapshot.error}"),
                  ),
                );
                return const Center(
                  child: Text("An error occured"),
                );
              } else if (snapshot.hasData) {
                final data = snapshot.data as List<Novel>;

                if (data.isNotEmpty) {
                  return RefreshIndicator(
                    onRefresh: () async {
                      setState(() {});
                    },
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 5.0,
                        mainAxisSpacing: 5.0,
                        childAspectRatio: 0.5,
                      ),
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        Novel novel = data[index];

                        return Card(
                          child: InkWell(
                              onTap: () async {
                                await Navigator.pushNamed(
                                  context,
                                  "/editing",
                                  arguments: {
                                    "db": db,
                                    "id": novel.novelId,
                                    "title": novel.title,
                                    "description": novel.description,
                                    "pictureDir": novel.pictureDir,
                                    "novel": novel.novel,
                                  },
                                );
                                setState(() {});
                              },
                              onLongPress: () {
                                showDialog(
                                  context: context,
                                  builder: (_) => AlertDialog(
                                    title: const Text("Delete"),
                                    content: Text(
                                        "Are you sure you want to delete ${novel.title}?"),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            db.deleteNovel(novel.novelId);
                                            Navigator.pop(context);
                                          },
                                          child: const Text("Yes"))
                                    ],
                                  ),
                                );
                              },
                              child: Stack(children: [
                                Image.file(File(novel.pictureDir),
                                    height: double.infinity,
                                    width: double.infinity,
                                    fit: BoxFit.cover),
                                Positioned(
                                    bottom: 5,
                                    left: 5,
                                    child: Text(novel.title)),
                              ])),
                        );
                      },
                    ),
                  );
                } else {
                  return Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("No novels yet."),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {});
                            },
                            child: const Text("Refresh"))
                      ],
                    ),
                  );
                }
              }
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return Container();
          },
        ));
  }
}
