import 'package:flutter/material.dart';

class NoAvailableCombonant extends StatelessWidget {
  const NoAvailableCombonant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Not Data Available',
        style: TextStyle(color: Colors.yellow),
      ),
    );
  }
}
