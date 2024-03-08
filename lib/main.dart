import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:store_app/screens/home_page.dart';
import 'package:store_app/screens/update_product_page.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      HomePage.id: (context) => const HomePage(),
      UpdateProductPage.id: (context) => UpdateProductPage(),
    }, debugShowCheckedModeBanner: false,
     initialRoute: HomePage.id);
  }
}
