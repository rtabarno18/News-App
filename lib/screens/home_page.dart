import 'package:news_app/card_list.dart';
import 'package:news_app/hashtags.dart';
import 'package:news_app/list_style.dart';
import 'package:news_app/search_bar.dart';
import 'package:news_app/short_section.dart';
import 'package:news_app/story_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            const AppBarTile(),
            const SizedBox(height: 15),
            const MySearchBar(),
            const SizedBox(height: 20),
            MyHashTags(),
            const SizedBox(height: 20),
            MyCardList(),
            const SizedBox(height: 20),
            const ShortSection(
              text: 'Short For You',
              text1: 'View All',
            ),
            const SizedBox(height: 10),
            const MyStoryTile(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
