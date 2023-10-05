//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'id_req.g.dart';

/// IdReq
///
/// Properties:
/// * [id] 
@BuiltValue()
abstract class IdReq implements Built<IdReq, IdReqBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  IdReq._();

  factory IdReq([void updates(IdReqBuilder b)]) = _$IdReq;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IdReqBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IdReq> get serializer => _$IdReqSerializer();
}

class _$IdReqSerializer implements PrimitiveSerializer<IdReq> {
  @override
  final Iterable<Type> types = const [IdReq, _$IdReq];

  @override
  final String wireName = r'IdReq';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IdReq object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IdReq object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IdReqBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IdReq deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IdReqBuilder();
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

