import 'package:example_flutter_dio/network/app_network_constants.dart';
import 'package:example_flutter_dio/network/response/response_todo_list.dart';
import 'package:flutter_network_layer_dio/flutter_network_layer_dio.dart';

/// The request command for fetching all todos.
final class RequestGetTodos implements IRequestCommand<ResponseTodoList> {
  /// Create an instance of [RequestGetTodos].
  const RequestGetTodos();

  @override
  Map<String, dynamic> get data => const {};

  @override
  Map<String, dynamic> get headers => const {};

  @override
  HttpRequestMethod get method => HttpRequestMethod.get;

  @override
  OnProgressCallback? get onReceiveProgressUpdate => null;

  @override
  OnProgressCallback? get onSendProgressUpdate => null;

  @override
  String get path => AppNetworkConstants.todos;

  @override
  RequestPayloadType get payloadType => RequestPayloadType.json;

  @override
  ResponseTodoList get sampleModel => const ResponseTodoList.empty();
}
