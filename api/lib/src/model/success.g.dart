// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'success.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Success extends Success {
  @override
  final bool? success;

  factory _$Success([void Function(SuccessBuilder)? updates]) =>
      (new SuccessBuilder()..update(updates))._build();

  _$Success._({this.success}) : super._();

  @override
  Success rebuild(void Function(SuccessBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SuccessBuilder toBuilder() => new SuccessBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Success && success == other.success;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Success')..add('success', success))
        .toString();
  }
}

class SuccessBuilder implements Builder<Success, SuccessBuilder> {
  _$Success? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  SuccessBuilder() {
    Success._defaults(this);
  }

  SuccessBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Success other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Success;
  }

  @override
  void update(void Function(SuccessBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Success build() => _build();

  _$Success _build() {
    final _$result = _$v ?? new _$Success._(success: success);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
