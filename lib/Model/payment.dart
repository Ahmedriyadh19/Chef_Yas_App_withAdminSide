// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Payment {
  String id;
  String? billID;
  double price;
  DateTime dateTime;
  String to;
  String details;
  Payment({
    required this.id,
    this.billID,
    required this.price,
    required this.dateTime,
    required this.to,
    required this.details,
  });

  Payment copyWith({
    String? id,
    String? billID,
    double? price,
    DateTime? dateTime,
    String? to,
    String? details,
  }) {
    return Payment(
      id: id ?? this.id,
      billID: billID ?? this.billID,
      price: price ?? this.price,
      dateTime: dateTime ?? this.dateTime,
      to: to ?? this.to,
      details: details ?? this.details,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'billID': billID,
      'price': price,
      'dateTime': dateTime.millisecondsSinceEpoch,
      'to': to,
      'details': details,
    };
  }

  factory Payment.fromMap(Map<String, dynamic> map) {
    return Payment(
      id: map['id'] as String,
      billID: map['billID'] != null ? map['billID'] as String : null,
      price: map['price'] as double,
      dateTime: DateTime.fromMillisecondsSinceEpoch(map['dateTime'] as int),
      to: map['to'] as String,
      details: map['details'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Payment.fromJson(String source) => Payment.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Payment(id: $id, billID: $billID, price: $price, dateTime: $dateTime, to: $to, details: $details)';
  }

  @override
  bool operator ==(covariant Payment other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.billID == billID &&
        other.price == price &&
        other.dateTime == dateTime &&
        other.to == to &&
        other.details == details;
  }

  @override
  int get hashCode {
    return id.hashCode ^ billID.hashCode ^ price.hashCode ^ dateTime.hashCode ^ to.hashCode ^ details.hashCode;
  }
}
