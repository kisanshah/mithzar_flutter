//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:api/src/model/cart_product.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cart.g.dart';

/// Cart
///
/// Properties:
/// * [id] 
/// * [quantity] 
/// * [product] 
@BuiltValue()
abstract class Cart implements Built<Cart, CartBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'quantity')
  int? get quantity;

  @BuiltValueField(wireName: r'product')
  CartProduct? get product;

  Cart._();

  factory Cart([void updates(CartBuilder b)]) = _$Cart;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CartBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Cart> get serializer => _$CartSerializer();
}

class _$CartSerializer implements PrimitiveSerializer<Cart> {
  @override
  final Iterable<Type> types = const [Cart, _$Cart];

  @override
  final String wireName = r'Cart';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Cart object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.quantity != null) {
      yield r'quantity';
      yield serializers.serialize(
        object.quantity,
        specifiedType: const FullType(int),
      );
    }
    if (object.product != null) {
      yield r'product';
      yield serializers.serialize(
        object.product,
        specifiedType: const FullType(CartProduct),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Cart object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CartBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'quantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.quantity = valueDes;
          break;
        case r'product':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CartProduct),
          ) as CartProduct;
          result.product.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Cart deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CartBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

