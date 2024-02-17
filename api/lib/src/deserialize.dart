import 'package:api/src/model/add_to_cart_request.dart';
import 'package:api/src/model/address.dart';
import 'package:api/src/model/cart.dart';
import 'package:api/src/model/checkout.dart';
import 'package:api/src/model/message.dart';
import 'package:api/src/model/order.dart';
import 'package:api/src/model/order_item.dart';
import 'package:api/src/model/pagination_filter.dart';
import 'package:api/src/model/pagination_filter_filters_inner.dart';
import 'package:api/src/model/product.dart';
import 'package:api/src/model/product_image.dart';
import 'package:api/src/model/product_sku.dart';
import 'package:api/src/model/product_variant.dart';
import 'package:api/src/model/section.dart';
import 'package:api/src/model/token.dart';
import 'package:api/src/model/user.dart';
import 'package:api/src/model/verify_otp_request.dart';

final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ReturnType deserialize<ReturnType, BaseType>(dynamic value, String targetType,
    {bool growable = true}) {
  switch (targetType) {
    case 'String':
      return '$value' as ReturnType;
    case 'int':
      return (value is int ? value : int.parse('$value')) as ReturnType;
    case 'bool':
      if (value is bool) {
        return value as ReturnType;
      }
      final valueString = '$value'.toLowerCase();
      return (valueString == 'true' || valueString == '1') as ReturnType;
    case 'double':
      return (value is double ? value : double.parse('$value')) as ReturnType;
    case 'AddToCartRequest':
      return AddToCartRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'Address':
      return Address.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'Cart':
      return Cart.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'Checkout':
      return Checkout.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'Message':
      return Message.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'Order':
      return Order.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'OrderItem':
      return OrderItem.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'PaginationFilter':
      return PaginationFilter.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'PaginationFilterFiltersInner':
      return PaginationFilterFiltersInner.fromJson(
          value as Map<String, dynamic>) as ReturnType;
    case 'Product':
      return Product.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'ProductImage':
      return ProductImage.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'ProductSku':
      return ProductSku.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'ProductVariant':
      return ProductVariant.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'Section':
      return Section.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'Token':
      return Token.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'User':
      return User.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'VerifyOtpRequest':
      return VerifyOtpRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    default:
      RegExpMatch? match;

      if (value is List && (match = _regList.firstMatch(targetType)) != null) {
        targetType = match![1]!; // ignore: parameter_assignments
        return value
            .map<BaseType>((dynamic v) => deserialize<BaseType, BaseType>(
                v, targetType,
                growable: growable))
            .toList(growable: growable) as ReturnType;
      }
      if (value is Set && (match = _regSet.firstMatch(targetType)) != null) {
        targetType = match![1]!; // ignore: parameter_assignments
        return value
            .map<BaseType>((dynamic v) => deserialize<BaseType, BaseType>(
                v, targetType,
                growable: growable))
            .toSet() as ReturnType;
      }
      if (value is Map && (match = _regMap.firstMatch(targetType)) != null) {
        targetType = match![1]!; // ignore: parameter_assignments
        return Map<dynamic, BaseType>.fromIterables(
          value.keys,
          value.values.map((dynamic v) => deserialize<BaseType, BaseType>(
              v, targetType,
              growable: growable)),
        ) as ReturnType;
      }
      break;
  }
  throw Exception('Cannot deserialize');
}
