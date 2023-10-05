import 'package:e_commerce_front_end/ui/cart/components/cart_item.dart';
import 'package:e_commerce_front_end/ui/components/custom_detail_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'My Cart',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return const CartItem();
                },
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemCount: 4,
              ),
              const Column(
                children: [
                  CartCalcItem(
                    title: 'Subtotal',
                    value: '80.00',
                  ),
                  CartCalcItem(
                    title: 'Delivery Fee',
                    value: '5.00',
                  ),
                  CartCalcItem(
                    title: 'Discount',
                    value: '10.00',
                  ),
                ],
              ),
              //Dotted Line
              Container(
                margin: const EdgeInsets.only(top: 20),
                height: 5,
                child: CustomPaint(
                  painter: DottedLinePainter(),
                ),
              ),
              const CartCalcItem(
                title: 'Total',
                value: '75.00',
              ),
              const Gap(10),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  minimumSize: const Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text('Continue'),
              ),
              const Gap(10),
            ],
          ),
        ),
      ),
    );
  }
}

//Dotted Line Custom Painter
class DottedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 1;

    const dashWidth = 5.0;
    const dashSpace = 5.0;
    final dashCount = size.width / (dashWidth + dashSpace);

    for (var i = 0; i < dashCount; i++) {
      canvas.drawLine(
        Offset(dashWidth * i + dashSpace * i, 0),
        Offset(dashWidth * i + dashSpace * i + dashWidth, 0),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class CartCalcItem extends StatelessWidget {
  const CartCalcItem({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Text(
            '$title : ',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.grey,
            ),
          ),
          const Spacer(),
          Text(
            '\$ $value',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
