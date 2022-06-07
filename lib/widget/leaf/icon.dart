import 'package:flutter/material.dart';

class LearnIcon extends StatelessWidget {
  const LearnIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          Icon(
            Icons.favorite,
            size: 100,
            color: Colors.red,
          ),
          Text(
            '\ue25b',
            style: TextStyle(
              color: Colors.orange,
              fontSize: 100,
              fontFamily: 'MaterialIcons',
            ),
          ),
          Icon(
            IconData(0xe6c0, fontFamily: 'Animal'),
            size: 200,
            color: Colors.yellow,
          ),
          Text(
            '\ue6c7\ue6ae',
            style: TextStyle(
              color: Colors.green,
              fontSize: 100,
              fontFamily: 'Animal',
            ),
          ),
        ],
      ),
    );
  }
}
