import 'package:isar/isar.dart';

part 'novel.g.dart';

@Collection()
class Novel {
  late Id novelId = Isar.autoIncrement;

  late String title;
  late String pictureDir;
  late String description;
  late String novel;
}
