import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class TrendingTopic extends StatelessWidget {
  const TrendingTopic({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VStack([
          const Text("Trending Topic")
              .text
              .color(Vx.white)
              .headline6(context).semiBold
              .make()
        ]).p(24).objectCenterLeft(),
        const HStack([
          TopicCapsule(label: "#Graphics design",),
          TopicCapsule(label: "#UX Design",),
        ]),
        const HStack([
          TopicCapsule(label: "#HCI Learning",),
          TopicCapsule(label: "#Data Analytics",),
        ]),
      ],
    );
  }
}
class TopicCapsule extends StatelessWidget {
  const TopicCapsule({super.key,required this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return VxCapsule(
      backgroundColor: Vx.gray800,
      height: 40,
      width: context.percentWidth*39,
      child: Text(label).text.color(Colors.white).make().objectCenter(),
    ).pSymmetric(h: 4,v: 4);
  }
}
