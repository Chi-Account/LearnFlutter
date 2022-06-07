import 'package:flutter/material.dart';

class LearnProgressIndicator extends StatefulWidget {
  const LearnProgressIndicator({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LearnProgressIndicatorState();
  }
}

class _LearnProgressIndicatorState extends State<LearnProgressIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    _animationController.forward();
    _animationController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: LinearProgressIndicator(
              value: null,
              backgroundColor: Colors.orange[100],
              color: Colors.orange,
              valueColor: const AlwaysStoppedAnimation(Colors.orange),
              minHeight: 5,
            ),
          ),
          SizedBox(
            width: 80,
            height: 60,
            child: CircularProgressIndicator(
              value: null,
              backgroundColor: Colors.green[100],
              color: Colors.green,
              valueColor: const AlwaysStoppedAnimation(Colors.green),
              strokeWidth: 5,
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 20)),
          SizedBox(
            width: 80,
            height: 60,
            child: CircularProgressIndicator(
              value: 0.5,
              backgroundColor: Colors.blue[100],
              color: Colors.blue,
              valueColor: ColorTween(
                begin: Colors.blue[100],
                end: Colors.blue,
              ).animate(_animationController),
              strokeWidth: 5,
            ),
          ),
        ],
      ),
    );
  }
}
