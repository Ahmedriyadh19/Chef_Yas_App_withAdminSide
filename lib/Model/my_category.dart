import 'dart:convert';

class MyCategory {
  String id;
  String name;
  bool available;
  String? des;
  MyCategory({
    required this.id,
    required this.name,
    required this.available,
    this.des,
  });

  MyCategory copyWith({
    String? id,
    String? name,
    bool? available,
    String? des,
  }) {
    return MyCategory(
      id: id ?? this.id,
      name: name ?? this.name,
      available: available ?? this.available,
      des: des ?? this.des,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'available': available,
      'des': des,
    };
  }

  factory MyCategory.fromMap(Map<String, dynamic> map) {
    return MyCategory(
      id: map['id'] as String,
      name: map['name'] as String,
      available: map['available'] as bool,
      des: map['des'] != null ? map['des'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MyCategory.fromJson(String source) => MyCategory.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MyCategory(id: $id, name: $name, available: $available, des: $des)';
  }

  @override
  bool operator ==(covariant MyCategory other) {
    if (identical(this, other)) return true;

    return other.id == id && other.name == name && other.available == available && other.des == des;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ available.hashCode ^ des.hashCode;
  }
}
