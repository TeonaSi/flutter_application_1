import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Example extends StatefulWidget {
  const Example({Key? key}) : super(key: key);

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  void printFirst() {
    print('first');
  }

  void printSecond() {
    print('first');
  }

  void printLast() {
    print('first');
  }

  void onLongPressPrint() {
    print('Longpress');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),
            ),
            onPressed: () {
              print('ElevatedButton pressed');
            },
            child: Text('Нажми меня'),
          ),
          OutlinedButton(
              onPressed: () {
                print('OutlinedButton pressed');
              },
              child: Text('Нажми меня')),
          TextButton(
              onPressed: () {
                print('TextButton pressed');
              },
              child: Text('Нажми меня')),
          // IconButton(onPressed: printLast, icon: Icon(Icons.ac_unit)),
        ],
      ),
    );
  }
}
