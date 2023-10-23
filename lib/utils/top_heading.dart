import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:google_fonts/google_fonts.dart';
class TopHeading extends StatelessWidget {
  const TopHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return HStack([
      VStack([
        const  Text('Explore')
            .text
            .color(Colors.white)
            .headline3(context).fontFamily(GoogleFonts.russoOne().fontFamily!)
            .make(),
        const Text('Infinity Capabilities')
            .text
            .color(Vx.white)
            .semiBold
            .headline5(context)
            .make(),
      ]),
      80.widthBox,
      'https://avatars.githubusercontent.com/u/99115141?v=4'.circularNetworkImage(radius: 32)
    ]).p(24);
  }
}
