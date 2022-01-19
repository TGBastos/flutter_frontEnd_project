import 'package:flutter/material.dart';

class InheritedNose extends InheritedWidget {
  final String red = 'red';
  const InheritedNose({required Widget child}) : super(child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

  static InheritedNose? of(BuildContext context) {
    context.dependOnInheritedWidgetOfExactType<InheritedNose>();
  }
}

class Clow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final nose = InheritedNose.of(context)!.red;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(nose),
        ),
        body: Container(),
      ),
    );
  }
}

void main() {
  runApp(
    InheritedNose(
      child: Clow(),
    ),
  );
}
