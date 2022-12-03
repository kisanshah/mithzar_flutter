import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProductDetailBottomBar extends StatelessWidget {
  const ProductDetailBottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: SafeArea(
        child: Container(
          height: 70,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  elevation: 0,
                  padding: EdgeInsets.zero,
                  minimumSize: const Size(30, 30),
                  side: const BorderSide(
                    color: Colors.green,
                    width: 1.5,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  '-',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  '1',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  padding: EdgeInsets.zero,
                  backgroundColor: Colors.green,
                  minimumSize: const Size(30, 30),
                  //Border color
                  side: const BorderSide(
                    color: Colors.green,
                    width: 1.5,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  '+',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              const Gap(50),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                    ),
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
