import 'package:cache_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      onGenerateRoute: Routegenerator.routeGenerator,
    );
  }
}

class Routegenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => CachedNetworkImagePage(),
    );
  }
}

