import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ExploreTopic extends StatelessWidget {
  const ExploreTopic({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Explore Topic')
            .text
            .color(Colors.white)
            .headline6(context).semiBold
            .make().objectCenterLeft(),
        10.heightBox,
         HStack([const RoundBox(
          icon: Icons.code,
          label: "Programming",
          desc: "Programming is the art of instructing computers "
              "through code. It empowers us to solve problems, automate tasks.",
          color: Colors.red,
        ).px(12),const RoundBox(
          icon: Icons.bookmark,
          label: "Books",
          desc: "Books are windows to other worlds, sources of "
              "knowledge, and catalyst for imagination. They transport readers "
              "to new realms.",
          color: Colors.green,
        ),])
      ],
    ).p(23);
  }
}

class RoundBox extends StatelessWidget {
  const RoundBox({super.key, required this.icon,required this.label,required this.desc,
  required this.color});
  final IconData icon;
  final String label;
  final String desc;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon,color: color,size: 25,),
          5.heightBox,
          Text(label).text.color(Colors.white).bold.make(),
          5.heightBox,
          Text(desc).text.color(Colors.grey).make(),
        ], )
    ).color(Vx.gray700).roundedLg.width(180).p24.make().objectCenterLeft();
  }
}

