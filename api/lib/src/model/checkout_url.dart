//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'checkout_url.g.dart';

/// CheckoutUrl
///
/// Properties:
/// * [url] 
/// * [orderId] 
@BuiltValue()
abstract class CheckoutUrl implements Built<CheckoutUrl, CheckoutUrlBuilder> {
  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'orderId')
  String? get orderId;

  CheckoutUrl._();

  factory CheckoutUrl([void updates(CheckoutUrlBuilder b)]) = _$CheckoutUrl;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CheckoutUrlBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CheckoutUrl> get serializer => _$CheckoutUrlSerializer();
}

class _$CheckoutUrlSerializer implements PrimitiveSerializer<CheckoutUrl> {
  @override
  final Iterable<Type> types = const [CheckoutUrl, _$CheckoutUrl];

  @override
  final String wireName = r'CheckoutUrl';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CheckoutUrl object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
    if (object.orderId != null) {
      yield r'orderId';
      yield serializers.serialize(
        object.orderId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CheckoutUrl object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CheckoutUrlBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        case r'orderId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.orderId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CheckoutUrl deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CheckoutUrlBuilder();
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

