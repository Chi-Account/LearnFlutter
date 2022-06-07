import 'package:flutter/material.dart';

class LearnConstraintsPrinter extends StatelessWidget {
  const LearnConstraintsPrinter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ConstraintsPrinter(
      child: FlutterLogo(),
    );
  }
}

class ConstraintsPrinter<T> extends StatelessWidget {
  const ConstraintsPrinter({
    Key? key,
    this.tag,
    required this.child,
  }) : super(key: key);

  final Widget child;
  final T? tag;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (
        BuildContext context,
        BoxConstraints constraints,
      ) {
        assert(() {
          print('${tag ?? key ?? child}: $constraints');
          return true;
        }());
        return child;
      },
    );
  }
}
