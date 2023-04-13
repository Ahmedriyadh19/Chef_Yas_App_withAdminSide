// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class MyItem {
  String id;
  String name;
  double price;
  String? des;
  String? categoryID;
  MyItem({
    required this.id,
    required this.name,
    required this.price,
    this.des,
    this.categoryID,
  });

  MyItem copyWith({
    String? id,
    String? name,
    double? price,
    String? des,
    String? categoryID,
  }) {
    return MyItem(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      des: des ?? this.des,
      categoryID: categoryID ?? this.categoryID,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'price': price,
      'des': des,
      'categoryID': categoryID,
    };
  }

  factory MyItem.fromMap(Map<String, dynamic> map) {
    return MyItem(
      id: map['id'] as String,
      name: map['name'] as String,
      price: map['price'] as double,
      des: map['des'] != null ? map['des'] as String : null,
      categoryID: map['categoryID'] != null ? map['categoryID'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MyItem.fromJson(String source) => MyItem.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MyItem(id: $id, name: $name, price: $price, des: $des, categoryID: $categoryID)';
  }

  @override
  bool operator ==(covariant MyItem other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.price == price &&
      other.des == des &&
      other.categoryID == categoryID;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      price.hashCode ^
      des.hashCode ^
      categoryID.hashCode;
  }
}
