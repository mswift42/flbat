import 'dart:async';

import 'package:battery_plus/battery_plus.dart';
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
  final Battery _battery = Battery();

  BatteryState? _batteryState;
  StreamSubscription<BatteryState>? _batteryStateSubscription;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Battery Widget'),
      ),
      body: Center(
        child: Column(
          children: [const Text('Battery ')],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _batteryStateSubscription =
        _battery.onBatteryStateChanged.listen((BatteryState state) {
      setState(() {
        _batteryState = state;
      });
    });
  }
}
