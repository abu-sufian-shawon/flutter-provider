import 'package:flutter/material.dart';
import 'package:state_management/providers/counter_provider.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget{
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Example App ${context.watch<Counter>().count}'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[
            Text('You have pushed the button this many times: ${context.watch<Counter>().count}'),

            ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/second');
                },
                child: const Text('Launch Screen'),
            )
          ],
        ),
      ),
      floatingActionButton: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton(
          onPressed: ()=>context.read<Counter>().decrement(),
          key: const Key('decrement_floatingActionButton'),
          tooltip: 'Decrement',
          child: const Icon(Icons.remove),
        ),
        const SizedBox(width: 10,),
        FloatingActionButton(
          onPressed: ()=>context.read<Counter>().reset(),
          key: const Key('reset_floatingActionButton'),
          tooltip: 'Reset',
          child: const Icon(Icons.exposure_zero),
        ),
        const SizedBox(width: 10.0,),
        FloatingActionButton(
          onPressed: ()=> context.read<Counter>().increment(),
          key: const Key('increment_floatingActionButton'),
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        )
      ],
      ),
    );
  }
}