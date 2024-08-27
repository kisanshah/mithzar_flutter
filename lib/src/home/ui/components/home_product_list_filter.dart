import 'package:api/api.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mithzar/src/shared/components/bottomsheet_wrapper.dart';

class HomeProductListFilter extends StatelessWidget {
  const HomeProductListFilter({
    super.key,
    this.filter,
    required this.result,
  });

  final PaginationFilter? filter;
  final Function(PaginationFilter filter) result;

  @override
  Widget build(BuildContext context) {
    return BottomSheetWrapper(
      title: 'Filter',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Hello'),
          const Spacer(),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text(
                    'Cancel',
                  ),
                ),
              ),
              const Gap(10),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    result(PaginationFilter());
                  },
                  child: const Text(
                    'Apply',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
