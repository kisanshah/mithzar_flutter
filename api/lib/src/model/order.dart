//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:api/src/model/order_item.dart';
import 'package:api/src/model/payment.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Order {
  /// Returns a new [Order] instance.
  Order({
    this.id,
    this.status,
    this.total,
    this.createdAt,
    this.items,
    this.payment,
  });

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final int? id;

  @JsonKey(name: r'status', required: false, includeIfNull: false)
  final String? status;

  @JsonKey(name: r'total', required: false, includeIfNull: false)
  final int? total;

  @JsonKey(name: r'createdAt', required: false, includeIfNull: false)
  final DateTime? createdAt;

  @JsonKey(name: r'items', required: false, includeIfNull: false)
  final List<OrderItem>? items;

  @JsonKey(name: r'payment', required: false, includeIfNull: false)
  final Payment? payment;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Order &&
          other.id == id &&
          other.status == status &&
          other.total == total &&
          other.createdAt == createdAt &&
          other.items == items &&
          other.payment == payment;

  @override
  int get hashCode =>
      id.hashCode +
      status.hashCode +
      total.hashCode +
      createdAt.hashCode +
      items.hashCode +
      payment.hashCode;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  Map<String, dynamic> toJson() => _$OrderToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
