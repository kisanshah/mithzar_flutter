import 'package:test/test.dart';
import 'package:api/api.dart';


/// tests for ProductApi
void main() {
  final instance = Api().getProductApi();

  group(ProductApi, () {
    // Returns a list of products.
    //
    //Future<BuiltList<String>> productsAllGet() async
    test('test productsAllGet', () async {
      // TODO
    });

  });
}
