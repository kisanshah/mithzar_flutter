//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_url.freezed.dart';
part 'checkout_url.g.dart';

@freezed
class CheckoutUrl with _$CheckoutUrl {
  const factory CheckoutUrl({
    String? url,
    String? orderId,
  }) = _CheckoutUrl;

  factory CheckoutUrl.fromJson(Map<String, Object?> json) =>
      _$CheckoutUrlFromJson(json);
}
