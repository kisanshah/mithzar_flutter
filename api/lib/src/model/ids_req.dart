//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ids_req.g.dart';

/// IdsReq
///
/// Properties:
/// * [ids] 
@BuiltValue()
abstract class IdsReq implements Built<IdsReq, IdsReqBuilder> {
  @BuiltValueField(wireName: r'ids')
  BuiltList<int>? get ids;

  IdsReq._();

  factory IdsReq([void updates(IdsReqBuilder b)]) = _$IdsReq;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IdsReqBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IdsReq> get serializer => _$IdsReqSerializer();
}

class _$IdsReqSerializer implements PrimitiveSerializer<IdsReq> {
  @override
  final Iterable<Type> types = const [IdsReq, _$IdsReq];

  @override
  final String wireName = r'IdsReq';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IdsReq object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ids != null) {
      yield r'ids';
      yield serializers.serialize(
        object.ids,
        specifiedType: const FullType(BuiltList, [FullType(int)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IdsReq object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IdsReqBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
          result.ids.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IdsReq deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IdsReqBuilder();
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

