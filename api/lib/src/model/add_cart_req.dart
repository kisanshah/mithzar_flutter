//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'add_cart_req.g.dart';

/// AddCartReq
///
/// Properties:
/// * [productId] 
@BuiltValue()
abstract class AddCartReq implements Built<AddCartReq, AddCartReqBuilder> {
  @BuiltValueField(wireName: r'productId')
  int? get productId;

  AddCartReq._();

  factory AddCartReq([void updates(AddCartReqBuilder b)]) = _$AddCartReq;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AddCartReqBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AddCartReq> get serializer => _$AddCartReqSerializer();
}

class _$AddCartReqSerializer implements PrimitiveSerializer<AddCartReq> {
  @override
  final Iterable<Type> types = const [AddCartReq, _$AddCartReq];

  @override
  final String wireName = r'AddCartReq';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AddCartReq object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.productId != null) {
      yield r'productId';
      yield serializers.serialize(
        object.productId,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AddCartReq object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AddCartReqBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'productId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.productId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AddCartReq deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddCartReqBuilder();
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

