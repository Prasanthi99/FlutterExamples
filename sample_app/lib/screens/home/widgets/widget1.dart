import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import '../../../scoped_models/scoped_counter.dart';

class Widget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant(
        builder: (context, child, model) =>
            Text('Widget1 counter is ${model.counter1.count}'));
  }
}