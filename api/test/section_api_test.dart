import 'package:test/test.dart';
import 'package:api/api.dart';

/// tests for SectionApi
void main() {
  final instance = Api().getSectionApi();

  group(SectionApi, () {
    // Get section based on the device
    //
    //Future<List<Section>> getSections() async
    test('test getSections', () async {
      // TODO
    });
  });
}
