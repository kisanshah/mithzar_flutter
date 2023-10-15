import 'package:test/test.dart';
import 'package:api/api.dart';


/// tests for TempApi
void main() {
  final instance = Api().getTempApi();

  group(TempApi, () {
    // Returns a list of products.
    //
    //Future<CheckoutUrl> checkoutPaymentResult(JsonObject body, { String xRazorpaySignature }) async
    test('test checkoutPaymentResult', () async {
      // TODO
    });

  });
}
