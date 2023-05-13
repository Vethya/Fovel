import 'package:isar/isar.dart';
import 'package:Fovel/collections/novel.dart';

class IsarService {
  late Future<Isar> db;

  IsarService() {
    db = openDB();
  }

  Future<List<Novel>> listNovels() async {
    final isar = await db;
    return await isar.novels.where().findAll();
  }

  Future<void> saveNovel(Novel novel) async {
    final isar = await db;
    isar.writeTxnSync<int>(() => isar.novels.putSync(novel));
  }

  Future<Novel?> getNovel(int id) async {
    final isar = await db;
    return await isar.novels.get(id);
  }

  Future<void> deleteNovel(int id) async {
    final isar = await db;
    isar.writeTxn(() async => {await isar.novels.delete(id)});
  }

  Future<Isar> openDB() async {
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [NovelSchema],
      );
    }

    return Future.value(Isar.getInstance());
  }
}
