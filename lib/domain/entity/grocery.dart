class Grocery {
  final int? id;
  final bool isCompleted;
  final String name;

  Grocery({
    this.id,
    this.isCompleted = false,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'is_completed': isCompleted,
      'name': name,
    };
  }

  factory Grocery.fromMap(Map<String, dynamic> map) {
    return Grocery(
      id: map['id'] as int?,
      isCompleted: map['is_completed'] as int == 1,
      name: map['name'] as String,
    );
  }
}
