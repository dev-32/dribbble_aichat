import 'package:dribbble_aichat/utils/bottom_nav.dart';
import 'package:dribbble_aichat/utils/explore_topic.dart';
import 'package:dribbble_aichat/utils/search_box.dart';
import 'package:dribbble_aichat/utils/top_heading.dart';
import 'package:dribbble_aichat/utils/trending_topic.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AI CHAT BOT UI',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.gray900,
      body: SafeArea(
        child: const Column(
          children: [
            // Top Heading
            TopHeading(),
            // Search Box
            SearchBox(),
            // Trending Topic
            TrendingTopic(),
            // Explore Topic
            ExploreTopic()
            ]
        ).scrollVertical(),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}


