import 'package:flutter/material.dart';
import 'package:learn_flutter/widget/custom/constraints_printer.dart';

class LearnFittedBox extends StatelessWidget {
  const LearnFittedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          createFittedBox(BoxFit.fill),
          createDivider(Colors.red),
          createFittedBox(BoxFit.contain),
          createDivider(Colors.orange),
          createFittedBox(BoxFit.cover),
          createDivider(Colors.yellow),
          createFittedBox(BoxFit.fitWidth),
          createDivider(Colors.green),
          createFittedBox(BoxFit.fitHeight),
          createDivider(Colors.cyan),
          createFittedBox(BoxFit.none),
          createDivider(Colors.blue),
          createFittedBox(BoxFit.scaleDown),
          createDivider(Colors.purple),
        ],
      ),
    );
  }

  Widget createFittedBox(BoxFit fit) {
    return Align(
      widthFactor: 2,
      heightFactor: 2,
      child: Container(
        color: Colors.black,
        width: 150,
        height: 150,
        child: FittedBox(
          fit: fit,
          alignment: AlignmentDirectional.center,
          child: Image.asset(
            'assets/images/stardew_valley_small.jpg',
            width: 171,
            height: 300,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }

  Widget createDivider(Color color) {
    return Divider(color: color);
  }
}

class LearnSingleLine extends StatelessWidget {
  const LearnSingleLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConstraintsPrinter(
          tag: 'Row',
          child: createRow('春江花月夜'),
        ),
        createRow('张若虚'),
        createRow('春江潮水连海平，海上明月共潮生'),
        SingleLineFittedBox(
          fit: BoxFit.contain,
          child: ConstraintsPrinter(
            tag: 'FittedBox',
            child: createRow('春江花月夜'),
          ),
        ),
        SingleLineFittedBox(
          fit: BoxFit.contain,
          child: createRow('张若虚'),
        ),
        SingleLineFittedBox(
          fit: BoxFit.contain,
          child: createRow('  春江潮水连海平，海上明月共潮生  '),
        ),
      ],
    );
  }

  Widget createRow(String textString) {
    Widget text = Text(textString);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          text,
          text,
          text,
        ],
      ),
    );
  }
}

class SingleLineFittedBox extends StatelessWidget {
  const SingleLineFittedBox({
    Key? key,
    required this.fit,
    required this.child,
  }) : super(key: key);

  final BoxFit fit;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return FittedBox(
          child: ConstrainedBox(
            constraints: constraints.copyWith(
              minWidth: constraints.maxWidth,
              maxWidth: double.infinity,
            ),
            child: child,
          ),
        );
      },
    );
  }
}
