import 'package:flutter_network_layer_core/flutter_network_layer_core.dart';

import 'test_response_samples.dart';

final class RequestTest1 extends RequestCommand<ResponseTest1> {
  RequestTest1({
    required this.field1,
  });

  final String field1;

  @override
  Map<String, dynamic> get data => {
        'field1': field1,
      };

  @override
  String get path => '/basic_test';

  @override
  ResponseTest1 get sampleModel => const ResponseTest1.empty();
}
