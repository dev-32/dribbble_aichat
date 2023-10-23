import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HStack([
          VxCapsule(
            backgroundColor: Vx.gray800,
            height: 50,
            width: context.percentWidth*70,
            child: const Text("Search").text.color(Colors.white).make().objectCenterLeft().px(20),
          ),
          12.widthBox,
          VxCapsule(
            backgroundColor: Vx.gray800,
            height: 50,
            width: context.percentWidth*16,
            child: const Icon(Icons.search,color: Colors.white,),
          ),
        ]).p(24),
      ],
    );
  }
}
