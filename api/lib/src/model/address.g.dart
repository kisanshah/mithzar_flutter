// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Address extends Address {
  @override
  final num? id;
  @override
  final String? streetAddress;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? postalCode;
  @override
  final String? country;
  @override
  final num? lat;
  @override
  final num? lng;
  @override
  final bool? default_;
  @override
  final int? userId;

  factory _$Address([void Function(AddressBuilder)? updates]) =>
      (new AddressBuilder()..update(updates))._build();

  _$Address._(
      {this.id,
      this.streetAddress,
      this.city,
      this.state,
      this.postalCode,
      this.country,
      this.lat,
      this.lng,
      this.default_,
      this.userId})
      : super._();

  @override
  Address rebuild(void Function(AddressBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddressBuilder toBuilder() => new AddressBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Address &&
        id == other.id &&
        streetAddress == other.streetAddress &&
        city == other.city &&
        state == other.state &&
        postalCode == other.postalCode &&
        country == other.country &&
        lat == other.lat &&
        lng == other.lng &&
        default_ == other.default_ &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, streetAddress.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, postalCode.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, lat.hashCode);
    _$hash = $jc(_$hash, lng.hashCode);
    _$hash = $jc(_$hash, default_.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Address')
          ..add('id', id)
          ..add('streetAddress', streetAddress)
          ..add('city', city)
          ..add('state', state)
          ..add('postalCode', postalCode)
          ..add('country', country)
          ..add('lat', lat)
          ..add('lng', lng)
          ..add('default_', default_)
          ..add('userId', userId))
        .toString();
  }
}

class AddressBuilder implements Builder<Address, AddressBuilder> {
  _$Address? _$v;

  num? _id;
  num? get id => _$this._id;
  set id(num? id) => _$this._id = id;

  String? _streetAddress;
  String? get streetAddress => _$this._streetAddress;
  set streetAddress(String? streetAddress) =>
      _$this._streetAddress = streetAddress;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  String? _postalCode;
  String? get postalCode => _$this._postalCode;
  set postalCode(String? postalCode) => _$this._postalCode = postalCode;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  num? _lat;
  num? get lat => _$this._lat;
  set lat(num? lat) => _$this._lat = lat;

  num? _lng;
  num? get lng => _$this._lng;
  set lng(num? lng) => _$this._lng = lng;

  bool? _default_;
  bool? get default_ => _$this._default_;
  set default_(bool? default_) => _$this._default_ = default_;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  AddressBuilder() {
    Address._defaults(this);
  }

  AddressBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _streetAddress = $v.streetAddress;
      _city = $v.city;
      _state = $v.state;
      _postalCode = $v.postalCode;
      _country = $v.country;
      _lat = $v.lat;
      _lng = $v.lng;
      _default_ = $v.default_;
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Address other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Address;
  }

  @override
  void update(void Function(AddressBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Address build() => _build();

  _$Address _build() {
    final _$result = _$v ??
        new _$Address._(
            id: id,
            streetAddress: streetAddress,
            city: city,
            state: state,
            postalCode: postalCode,
            country: country,
            lat: lat,
            lng: lng,
            default_: default_,
            userId: userId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
