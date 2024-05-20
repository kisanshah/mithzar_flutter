import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpBox extends StatelessWidget {
  const OtpBox({super.key, required this.node, required this.controller});

  final FocusNode node;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    int count = 0;
    return SizedBox(
      height: 50,
      width: 50,
      child: KeyboardListener(
        focusNode: FocusNode(canRequestFocus: false),
        onKeyEvent: (value) {
          if (value.character == ' ') {
            if (count > 0) {
              FocusScope.of(context).previousFocus();
              count = 0;
              return;
            }
            count++;
          }
        },
        child: TextFormField(
          controller: controller,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          textInputAction: TextInputAction.next,
          textAlign: TextAlign.center,
          autofocus: true,
          onEditingComplete: () {},
          onChanged: (value) {
            if (value.isNotEmpty) {
              FocusScope.of(context).nextFocus();
              count = 0;
            }
          },
          maxLength: 1,
          decoration: const InputDecoration(
            counterText: '',
            contentPadding: EdgeInsets.zero,
            hintText: '-',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
