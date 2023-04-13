import 'dart:convert';

class ReceiveMoney {
  String id;
  String? billID;
  double price;
  DateTime dateTime;
  String from;
  String details;
  ReceiveMoney({
    required this.id,
    this.billID,
    required this.price,
    required this.dateTime,
    required this.from,
    required this.details,
  });

  ReceiveMoney copyWith({
    String? id,
    String? billID,
    double? price,
    DateTime? dateTime,
    String? from,
    String? details,
  }) {
    return ReceiveMoney(
      id: id ?? this.id,
      billID: billID ?? this.billID,
      price: price ?? this.price,
      dateTime: dateTime ?? this.dateTime,
      from: from ?? this.from,
      details: details ?? this.details,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'billID': billID,
      'price': price,
      'dateTime': dateTime.millisecondsSinceEpoch,
      'from': from,
      'details': details,
    };
  }

  factory ReceiveMoney.fromMap(Map<String, dynamic> map) {
    return ReceiveMoney(
      id: map['id'] as String,
      billID: map['billID'] != null ? map['billID'] as String : null,
      price: map['price'] as double,
      dateTime: DateTime.fromMillisecondsSinceEpoch(map['dateTime'] as int),
      from: map['from'] as String,
      details: map['details'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ReceiveMoney.fromJson(String source) => ReceiveMoney.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ReceiveMoney(id: $id, billID: $billID, price: $price, dateTime: $dateTime, from: $from, details: $details)';
  }

  @override
  bool operator ==(covariant ReceiveMoney other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.billID == billID &&
        other.price == price &&
        other.dateTime == dateTime &&
        other.from == from &&
        other.details == details;
  }

  @override
  int get hashCode {
    return id.hashCode ^ billID.hashCode ^ price.hashCode ^ dateTime.hashCode ^ from.hashCode ^ details.hashCode;
  }
}
