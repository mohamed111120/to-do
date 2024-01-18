import 'package:flutter/material.dart';

class CustomTaskComponant extends StatelessWidget {
  const CustomTaskComponant(
      {Key? key, required this.taskName, required this.date, required this.time})
      : super(key: key);
  final String taskName;
  final String date;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black,

          border: Border.all(color: Colors.yellow, width: 1)
      ),
      child: Column(children: [
        Text(taskName,style: TextStyle(color: Colors.white),),
        Text(date,style: TextStyle(color: Colors.white),),
        Text(time,style: TextStyle(color: Colors.white),),
      ]),
    );
  }
}
