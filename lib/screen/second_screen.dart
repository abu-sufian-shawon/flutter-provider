import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:state_management/providers/counter_provider.dart';
import 'package:state_management/providers/shopping_cart_provider.dart';

class SecondScreen extends StatelessWidget{
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Provider Example App (${context.watch<Counter>().count})'),
      ),
      body: Center(
        child: Column(
          children: [
            Text("${context.watch<ShoppingCart>().count}"),
            Text('${context.watch<ShoppingCart>().cart}')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        key: const Key('addItem_floatingActionButton'),
        onPressed: ()=>context.read<ShoppingCart>().addItem('Bread'),
        tooltip: 'Add Item',
        child: const Icon(Icons.add),
      ),
    );
  }


}