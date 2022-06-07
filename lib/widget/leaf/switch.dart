import 'package:flutter/material.dart';

class LearnSwitch extends StatefulWidget {
  const LearnSwitch({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LearnSwitchState();
  }
}

class _LearnSwitchState extends State<LearnSwitch> {
  bool _switchValue = false;

  void _onSwitchValueChanged(bool value) {
    setState(() {
      _switchValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _switchValue,
      onChanged: _onSwitchValueChanged,
      activeColor: Colors.blue,
    );
  }
}
