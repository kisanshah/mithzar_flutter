//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:api/src/model/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart.freezed.dart';
part 'cart.g.dart';


@freezed
class Cart with _$Cart {

const factory Cart({
    int? id,
    ///  this.id,
    int? quantity,
    ///  this.quantity,
    Product? product,
    ///  this.product,
}) = _Cart;

factory Cart.fromJson(Map<String, Object?> json)
=> _$CartFromJson(json);
}

