import 'package:flutter/material.dart';

class OrangeDot extends StatelessWidget {
  final bool selected;
  const OrangeDot({super.key, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        color: selected? Color(0xFFFF9500):Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}
