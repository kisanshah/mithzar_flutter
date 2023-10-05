import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OrderItem extends ConsumerWidget {
  const OrderItem({
    super.key,
    required this.order,
  });
  final Order order;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      child: Text('$order'),
    );
  }
}
