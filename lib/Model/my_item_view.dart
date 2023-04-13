
import 'dart:convert';

class MyItemView {
  String id;
  String name;
  String? des;
  double price;
  int quantity;
  String? note;
  
  MyItemView({
    required this.id,
    required this.name,
    this.des,
    required this.price,
    required this.quantity,
    this.note,
  });

  MyItemView copyWith({
    String? id,
    String? name,
    String? des,
    double? price,
    int? quantity,
    String? note,
  }) {
    return MyItemView(
      id: id ?? this.id,
      name: name ?? this.name,
      des: des ?? this.des,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      note: note ?? this.note,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'des': des,
      'price': price,
      'quantity': quantity,
      'note': note,
    };
  }

  factory MyItemView.fromMap(Map<String, dynamic> map) {
    return MyItemView(
      id: map['id'] as String,
      name: map['name'] as String,
      des: map['des'] != null ? map['des'] as String : null,
      price: map['price'] as double,
      quantity: map['quantity'] as int,
      note: map['note'] != null ? map['note'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MyItemView.fromJson(String source) => MyItemView.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MyItemView(id: $id, name: $name, des: $des, price: $price, quantity: $quantity, note: $note)';
  }

  @override
  bool operator ==(covariant MyItemView other) {
    if (identical(this, other)) return true;

    return other.id == id && other.name == name && other.des == des && other.price == price && other.quantity == quantity && other.note == note;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ des.hashCode ^ price.hashCode ^ quantity.hashCode ^ note.hashCode;
  }
}
