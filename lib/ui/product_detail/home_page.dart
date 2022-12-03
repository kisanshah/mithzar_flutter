import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../components/custom_detail_app_bar.dart';
import '../theme/app_color.dart';
import 'components/product_detail_bottom_bar.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const ProductDetailBottomBar(),
      appBar: const CustomAppBar(title: 'Product Detail'),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 300,
            width: double.infinity,
            color: AppColor.grey,
            alignment: Alignment.center,
            child: Image.network(
              'https://cdn.shopify.com/s/files/1/0057/8938/4802/files/2_3.png?v=1655536451',
              height: 220,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Flexible(
                      child: Text(
                        'Rockerz 450',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      r'$ 4.999',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Gap(10),
                //Description
                const Text(
                  'There is no better justice to your playlist than Rockerz 450 boAt | DC edition. If low battery is your enemy, the 15HRS non-stop playback is here to rightfully combat that. ',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Gap(10),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Color : ',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                          TextSpan(
                            text: 'Black',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.arrow_drop_down,
                    ),
                  ],
                ),
                Visibility(
                  child: Container(
                    margin: const EdgeInsets.only(top: 10),
                    height: 75,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 75,
                          height: 75,
                          margin: const EdgeInsets.only(right: 10),
                          //border decoration
                          decoration: BoxDecoration(
                            color: AppColor.grey,
                            border: Border.all(
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.center,
                          child: Image.network(
                            'https://cdn.shopify.com/s/files/1/0057/8938/4802/files/2_3.png?v=1655536451',
                            height: 50,
                          ),
                        );
                      },
                    ),
                  ),
                ),
                const Divider(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
