import 'package:flutter/material.dart';

class BatWidget extends StatelessWidget {
  const BatWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Battery Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BwState(),
    );
  }
}

class BwState extends StatefulWidget {
  const BwState({Key? key}) : super(key: key);

  @override
  _BwStateState createState() => _BwStateState();
}

class _BwStateState extends State<BwState> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
