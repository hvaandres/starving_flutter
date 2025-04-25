class Grocery {
  int? id;
  final bool isCompleted;
  final String name;

  Grocery({
    this.isCompleted = false,
    required this.name,
  });

  Grocery copyWith({
    int? id,
    String? name,
  }) {
    final grocery = Grocery(
      name: name ?? this.name,
    );
    grocery.id = id;
    return grocery;
  }
}
