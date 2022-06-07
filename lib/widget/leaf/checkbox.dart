import 'package:flutter/material.dart';

class LearnCheckbox extends StatefulWidget {
  const LearnCheckbox({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LearnCheckboxState();
  }
}

class _LearnCheckboxState extends State<LearnCheckbox> {
  bool? _checkboxValue;

  void _onCheckboxValueChanged(bool? value) {
    setState(() {
      _checkboxValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: _checkboxValue,
      tristate: true,
      onChanged: _onCheckboxValueChanged,
      activeColor: Colors.blue,
    );
  }
}
