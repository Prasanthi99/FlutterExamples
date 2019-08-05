import 'package:flutter/material.dart';
import '../../models/counter.dart';
import 'package:scoped_model/scoped_model.dart';
import '../../scoped_models/scoped_counter.dart';
import '../home/widgets/widget1.dart';
import '../home/widgets/widget2.dart';
import '../home/widgets/widget3.dart';


class HomePage extends StatelessWidget {
  final ScopedCounter scopedCounter = ScopedCounter();

  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: scopedCounter,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Hello World with Scoped Model'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Widget1(),
              Widget2(),
              Widget3(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => scopedCounter.increment(),
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}