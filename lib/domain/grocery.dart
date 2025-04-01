import 'package:isar/isar.dart';

part 'grocery.g.dart';

@collection
class Grocery {
  Id? id;
  final bool isCompleted;
  final String name;

  Grocery({
    required this.isCompleted,
    required this.name,
  });
}
