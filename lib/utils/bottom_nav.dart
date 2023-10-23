import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  VxCapsule(
        backgroundColor: Vx.gray300,
        height: 65,
        child :const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.home_filled,color: Vx.gray900,),
            Icon(Icons.bubble_chart_rounded,color: Vx.gray900,),
            Icon(Icons.chat,color: Vx.gray900,),
          ],
        ),
      ).p(25).scale100()
    );
  }
}
