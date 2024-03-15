import 'package:api/api.dart';
import 'package:mithzar/features/address/ui/providers/address_list_provider.dart';
import 'package:mithzar/features/cart/data/repository/cart_repo_impl.dart';
import 'package:mithzar/features/cart/ui/providers/cart_list_provider.dart';
import 'package:mithzar/features/orders/data/repository/order_repo_impl.dart';
import 'package:mithzar/features/routes/router/app_router.gr.dart';
import 'package:mithzar/features/shared/providers/router_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart_provider.g.dart';

@riverpod
Future<(List<Address>, List<Cart>, CartAmountBreakdown)> cart(
  CartRef ref,
) async {
  return (
    ref.read(addressListProvider.future),
    ref.read(cartListProvider.future),
    ref.read(cartAmountProvider.future)
  ).wait;
}

@riverpod
FutureOr<CartAmountBreakdown> cartAmount(CartAmountRef ref) async {
  ref.watch(cartListProvider);
  return ref.watch(cartRepoProvider).amountBreakdown();
}

@riverpod
FutureOr<void> checkout(CheckoutRef ref) async {
  final checkout = await ref.watch(orderRepoProvider).checkout();
  if (checkout.url == null) {
    return;
  }
  ref.read(routerProvider).push(PaymentRoute(url: checkout.url!));
}
