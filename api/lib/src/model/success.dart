//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'success.g.dart';

/// Success
///
/// Properties:
/// * [success] 
@BuiltValue()
abstract class Success implements Built<Success, SuccessBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  Success._();

  factory Success([void updates(SuccessBuilder b)]) = _$Success;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SuccessBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Success> get serializer => _$SuccessSerializer();
}

class _$SuccessSerializer implements PrimitiveSerializer<Success> {
  @override
  final Iterable<Type> types = const [Success, _$Success];

  @override
  final String wireName = r'Success';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Success object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Success object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SuccessBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Success deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SuccessBuilder();
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

