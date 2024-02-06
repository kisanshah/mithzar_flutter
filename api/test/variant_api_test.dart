import 'package:test/test.dart';
import 'package:api/api.dart';

/// tests for VariantApi
void main() {
  final instance = Api().getVariantApi();

  group(VariantApi, () {
    // Get variant list.
    //
    //Future<ProductVariant> getVariants(int page, int size) async
    test('test getVariants', () async {
      // TODO
    });
  });
}
