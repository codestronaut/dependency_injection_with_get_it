import 'package:dependency_injection_lab/data/repositories/cat_repository.dart';
import 'package:dependency_injection_lab/locator.dart';
import 'package:dependency_injection_lab/presentation/notifier/cat_notifier.dart';
import 'package:dependency_injection_lab/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'package:dependency_injection_lab/locator.dart' as di;

void main() {
  /// initialize dependency injection
  di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => locator<CatNotifier>(),
      child: MaterialApp(
        title: 'DI with Get it',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
