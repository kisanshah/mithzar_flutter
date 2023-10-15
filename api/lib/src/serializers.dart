//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:api/src/date_serializer.dart';
import 'package:api/src/model/date.dart';

import 'package:api/src/model/add_cart_req.dart';
import 'package:api/src/model/address.dart';
import 'package:api/src/model/cart.dart';
import 'package:api/src/model/cart_product.dart';
import 'package:api/src/model/checkout_url.dart';
import 'package:api/src/model/id_req.dart';
import 'package:api/src/model/order.dart';
import 'package:api/src/model/order_products_inner.dart';
import 'package:api/src/model/product.dart';
import 'package:api/src/model/success.dart';
import 'package:api/src/model/tokens.dart';
import 'package:api/src/model/user.dart';

part 'serializers.g.dart';

@SerializersFor([
  AddCartReq,
  Address,
  Cart,
  CartProduct,
  CheckoutUrl,
  IdReq,
  Order,
  OrderProductsInner,
  Product,$Product,
  Success,
  Tokens,
  User,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Address)]),
        () => ListBuilder<Address>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Cart)]),
        () => ListBuilder<Cart>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(int)]),
        () => ListBuilder<int>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Product)]),
        () => ListBuilder<Product>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Order)]),
        () => ListBuilder<Order>(),
      )
      ..add(Product.serializer)
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
