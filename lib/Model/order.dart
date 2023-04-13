// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:chef_yas/Model/my_item_view.dart';

class Order {
  String id;
  int type;
  double total;
  String? note;
  List<MyItemView>? orderItems = [];
  Order({
    required this.id,
    required this.type,
    required this.total,
    this.note,
    this.orderItems,
  });

  Order copyWith({
    String? id,
    int? type,
    double? total,
    String? note,
    List<MyItemView>? orderItems,
  }) {
    return Order(
      id: id ?? this.id,
      type: type ?? this.type,
      total: total ?? this.total,
      note: note ?? this.note,
      orderItems: orderItems ?? this.orderItems,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'type': type,
      'total': total,
      'note': note,
      'orderItems': orderItems?.map((x) => x.toMap()).toList(),
    };
  }

  factory Order.fromMap(Map<String, dynamic> map) {
    return Order(
      id: map['id'] as String,
      type: map['type'] as int,
      total: map['total'] as double,
      note: map['note'] != null ? map['note'] as String : null,
      orderItems: map['orderItems'] != null
          ? List<MyItemView>.from(
              (map['orderItems'] as List<int>).map<MyItemView?>(
                (x) => MyItemView.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Order.fromJson(String source) => Order.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Order(id: $id, type: $type, total: $total, note: $note, orderItems: $orderItems)';
  }

  @override
  bool operator ==(covariant Order other) {
    if (identical(this, other)) return true;

    return other.id == id && other.type == type && other.total == total && other.note == note && listEquals(other.orderItems, orderItems);
  }

  @override
  int get hashCode {
    return id.hashCode ^ type.hashCode ^ total.hashCode ^ note.hashCode ^ orderItems.hashCode;
  }
}
