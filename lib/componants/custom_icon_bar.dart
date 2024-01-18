import 'package:flutter/material.dart';

class CustomBarItem extends StatelessWidget {
  const CustomBarItem(
      {Key? key,
      required this.itemName,
      required this.onTap,
      required this.isSelected})
      : super(key: key);
  final String itemName;
  final VoidCallback onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
              border: isSelected
                  ? Border(
                      bottom: BorderSide(
                      color: Colors.blue,
                      style: BorderStyle.solid,
                      width: 2,
                    ))
                  : Border.all(color: Colors.transparent)),
          height: 50,
          child: Center(child: Text(itemName, textAlign: TextAlign.center)),
        ),
      ),
    );
  }
}
