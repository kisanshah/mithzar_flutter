import 'dart:io';

import 'package:api/api.dart';
import 'package:mithzar/src/orders/data/repository/order_repo_impl.dart';
import 'package:mithzar/src/orders/domain/repository/order_repository.dart';
import 'package:open_file_plus/open_file_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'order_detail_provider.g.dart';

@Riverpod(dependencies: [orderRepo])
class OrderDetail extends _$OrderDetail {
  late OrderRepository _repo;

  @override
  FutureOr<Order> build(int id) {
    _repo = ref.watch(orderRepoProvider);
    return _repo.getOrderById(id);
  }

  Future<void> downloadInvoice() async {
    final invoice = await _repo.downloadInvoice(id);
    final dir = await getTemporaryDirectory();
    final file = File('${dir.path}/invoice.pdf');
    file.createSync();
    file.writeAsBytesSync(invoice);
    await OpenFile.open(file.path);
  }
}
