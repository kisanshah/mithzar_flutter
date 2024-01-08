import 'dart:io';

import 'package:api/api.dart';
import 'package:mithzar/core/extensions/future.dart';
import 'package:mithzar/features/orders/data/repository/order_repo_impl.dart';
import 'package:mithzar/features/orders/domain/repository/order_repository.dart';
import 'package:mithzar/features/shared/state/user_state.dart';
import 'package:open_file_plus/open_file_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'order_detail_provider.g.dart';

@Riverpod(dependencies: [orderRepo])
class OrderDetailNotifier extends _$OrderDetailNotifier {
  late OrderRepository _repo;

  @override
  State<Order> build() {
    _repo = ref.watch(orderRepoProvider);
    return LoadingState();
  }

  Future<void> fetch(String id) async {
    final order = await _repo.getOrderById(id);
    state = order.state();
  }

  Future<void> downloadInvoice(String id) async {
    final invoice = await _repo.downloadInvoice(id);
    invoice.fold((error) => null, (data) async {
      final dir = await getTemporaryDirectory();
      final file = File('${dir.path}/invoice.pdf');
      file.createSync();
      file.writeAsBytesSync(data);
      await OpenFile.open(file.path);
    });
  }
}
