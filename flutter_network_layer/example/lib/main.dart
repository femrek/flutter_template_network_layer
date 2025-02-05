import 'package:example/home/screen_home.dart';
import 'package:example/product/dependency_injection/app_get_it.dart';
import 'package:flutter/material.dart';
import 'package:flutter_network_layer/flutter_network_layer.dart';
import 'package:get_it/get_it.dart';

void main() async {
  AppGetIt.init();
  await GetIt.I.get<INetworkInvoker>().init(
        'https://jsonplaceholder.typicode.com',
      );
  runApp(const App());
}

/// The app widget.
class App extends StatelessWidget {
  /// Create an instance of [App].
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'App',
      home: ScreenHome(),
    );
  }
}
