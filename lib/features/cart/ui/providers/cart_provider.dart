import 'package:api/api.dart';
import 'package:mithzar/features/address/ui/providers/address_list_provider.dart';
import 'package:mithzar/features/cart/ui/providers/cart_list_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart_provider.g.dart';

@riverpod
Future<(List<Address>, List<Cart>)> cart(CartRef ref) async {
  return (
    ref.read(addressListProvider.future),
    ref.read(cartListProvider.future)
  ).wait;
}