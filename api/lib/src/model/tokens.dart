//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tokens.g.dart';

/// Tokens
///
/// Properties:
/// * [refreshToken] 
/// * [accessToken] 
@BuiltValue()
abstract class Tokens implements Built<Tokens, TokensBuilder> {
  @BuiltValueField(wireName: r'refreshToken')
  String? get refreshToken;

  @BuiltValueField(wireName: r'accessToken')
  String? get accessToken;

  Tokens._();

  factory Tokens([void updates(TokensBuilder b)]) = _$Tokens;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TokensBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Tokens> get serializer => _$TokensSerializer();
}

class _$TokensSerializer implements PrimitiveSerializer<Tokens> {
  @override
  final Iterable<Type> types = const [Tokens, _$Tokens];

  @override
  final String wireName = r'Tokens';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Tokens object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.refreshToken != null) {
      yield r'refreshToken';
      yield serializers.serialize(
        object.refreshToken,
        specifiedType: const FullType(String),
      );
    }
    if (object.accessToken != null) {
      yield r'accessToken';
      yield serializers.serialize(
        object.accessToken,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Tokens object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TokensBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'refreshToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.refreshToken = valueDes;
          break;
        case r'accessToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accessToken = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Tokens deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TokensBuilder();
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

