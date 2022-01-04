import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/providers/shopping_cart_provider.dart';
import 'package:state_management/screen/home_screen.dart';
import 'package:state_management/screen/second_screen.dart';
import 'providers/counter_provider.dart';

void main() {
  runApp(
      MultiProvider(
          providers: [
            ChangeNotifierProvider(
            create: (_)=> Counter()
            ),
            ChangeNotifierProvider(
              create : (_) => ShoppingCart()
            ),
          ],
        child: const MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => const MyHomePage(),
        '/second' : (context) => const SecondScreen(),
      },
    );
  }
}
