import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:e_commerce_front_end/features/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class PaymentPage extends ConsumerStatefulWidget {
  const PaymentPage({super.key, required this.url});
  final String url;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PaymentPageState();
}

class _PaymentPageState extends ConsumerState<PaymentPage> {
  late InAppWebViewController _controller;
  final options = InAppWebViewGroupOptions(
    crossPlatform: InAppWebViewOptions(
      useShouldOverrideUrlLoading: true,
      mediaPlaybackRequiresUserGesture: false,
    ),
    android: AndroidInAppWebViewOptions(
      useHybridComposition: true,
    ),
    ios: IOSInAppWebViewOptions(
      allowsInlineMediaPlayback: true,
    ),
  );

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      if (Platform.isAndroid) {
        await AndroidInAppWebViewController.setWebContentsDebuggingEnabled(
          true,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.accentColor,
        body: InAppWebView(
          initialOptions: options,
          initialUrlRequest: URLRequest(url: Uri.parse(widget.url)),
          onLoadStart: (controller, url) {
            //Check for success page
            if (url?.queryParameters['razorpay_payment_link_status'] ==
                'paid') {
              //Redirect to order detail page
              Navigator.pop(context);
            }
          },
          onWebViewCreated: (controller) {
            controller.loadUrl(
              urlRequest: URLRequest(url: Uri.parse(widget.url)),
            );
          },
        ),
      ),
    );
  }
}
