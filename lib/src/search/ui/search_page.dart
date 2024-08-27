import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:mithzar/src/home/ui/components/home_app_bar.dart';
import 'package:mithzar/src/search/ui/providers/search_provider.dart';
import 'package:mithzar/src/shared/providers/algolio_event.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

@RoutePage()
class SearchPage extends ConsumerStatefulWidget {
  const SearchPage({super.key});

  @override
  ConsumerState<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends ConsumerState<SearchPage> {
  @override
  Widget build(BuildContext context) {
    final notifier = ref.read(searchNotifierProvider.notifier);
    final state = ref.watch(searchNotifierProvider);
    final algolia = ref.read(algolioEventProvider.notifier);
    return Scaffold(
      appBar: const HomeAppBar(
        title: 'SEARCH',
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    onChanged: notifier.search,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10,
                      ),
                      isDense: true,
                      hintText: 'Bangles...',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        borderSide: BorderSide(
                          width: 0.7,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        borderSide: BorderSide(
                          width: 0.7,
                        ),
                      ),
                      suffixIconConstraints: BoxConstraints(),
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Icon(
                          PhosphorIconsRegular.magnifyingGlass,
                          size: 22,
                        ),
                      ),
                    ),
                  ),
                  const Gap(5),
                  // state.unfold((suggestions) {
                  //   return Wrap(
                  //     spacing: 7,
                  //     children: List.generate(
                  //       suggestions.length,
                  //       (index) => Chip(
                  //         padding: EdgeInsets.zero,
                  //         labelPadding:
                  //             const EdgeInsets.symmetric(horizontal: 10),
                  //         side: const BorderSide(
                  //           width: 0.5,
                  //         ),
                  //         shape: const RoundedRectangleBorder(),
                  //         backgroundColor: Colors.transparent,
                  //         label: Text(
                  //           '${suggestions[index].name}',
                  //           style: const TextStyle(fontSize: 10),
                  //         ),
                  //       ),
                  //     ),
                  //   );
                  // }),
                ],
              ),
            ),
          ),
          // state.unfoldSliver((products) {
          //   return MultiSliver(
          //     children: [
          //       const SliverToBoxAdapter(
          //         child: Padding(
          //           padding: EdgeInsets.symmetric(horizontal: 20),
          //           child: Text(
          //             'Search Result ⚡',
          //           ),
          //         ),
          //       ),
          //       SliverPadding(
          //         padding: const EdgeInsets.all(20),
          //         sliver: SliverGrid.builder(
          //           itemBuilder: (context, index) {
          //             return VariantItem(
          //               // product: products[index],
          //               onClick: () {
          //                 algolia.emit(
          //                   ids: [products[index].id.toString()],
          //                   type: AlgolioEventType.view,
          //                 );
          //               },
          //             );
          //           },
          //           itemCount: products.length,
          //           gridDelegate:
          //               const SliverGridDelegateWithFixedCrossAxisCount(
          //             crossAxisCount: 2,
          //             mainAxisExtent: 220,
          //             mainAxisSpacing: 15,
          //             crossAxisSpacing: 15,
          //           ),
          //         ),
          //       ),
          //     ],
          //   );
          // }),
          // SliverToBoxAdapter(
          //   child: SizedBox(
          //     height: 250,
          //     child: ListView.builder(
          //       padding: const EdgeInsets.only(left: 20, top: 20, right: 10),
          //       scrollDirection: Axis.horizontal,
          //       controller: PageController(),
          //       itemBuilder: (context, index) => Container(
          //         margin: const EdgeInsets.only(right: 10),
          //         width: 175,
          //         height: 250,
          //         child: const ProductItem(),
          //       ),
          //       itemCount: 6,
          //     ),
          //   ),
          // ),
          // const SliverGap(15),
          // SliverToBoxAdapter(
          //   child: Center(
          //     child: OutlinedButton(
          //       onPressed: () {},
          //       child: const Text(
          //         'View All  →',
          //         style: TextStyle(
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
