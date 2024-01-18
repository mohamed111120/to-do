import 'package:flutter/material.dart';

import 'custom_componants.dart';

class ListWidget extends StatelessWidget {
  const ListWidget(
      {Key? key,
      required this.length,
      required this.taskName,
      required this.date,
      required this.time})
      : super(key: key);
  final int length;
  final String taskName;
  final String date;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: List.generate(
          length,
          (index) => CustomTaskComponant(
            taskName: taskName,
            date: date,
            time: time,
          ),
        ),
      ),
    );
  }
}
