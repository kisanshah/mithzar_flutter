// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tokens.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Tokens extends Tokens {
  @override
  final String? refreshToken;
  @override
  final String? accessToken;

  factory _$Tokens([void Function(TokensBuilder)? updates]) =>
      (new TokensBuilder()..update(updates))._build();

  _$Tokens._({this.refreshToken, this.accessToken}) : super._();

  @override
  Tokens rebuild(void Function(TokensBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TokensBuilder toBuilder() => new TokensBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Tokens &&
        refreshToken == other.refreshToken &&
        accessToken == other.accessToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Tokens')
          ..add('refreshToken', refreshToken)
          ..add('accessToken', accessToken))
        .toString();
  }
}

class TokensBuilder implements Builder<Tokens, TokensBuilder> {
  _$Tokens? _$v;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  TokensBuilder() {
    Tokens._defaults(this);
  }

  TokensBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _refreshToken = $v.refreshToken;
      _accessToken = $v.accessToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Tokens other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Tokens;
  }

  @override
  void update(void Function(TokensBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Tokens build() => _build();

  _$Tokens _build() {
    final _$result = _$v ??
        new _$Tokens._(refreshToken: refreshToken, accessToken: accessToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
