import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../models/newsmodel.dart';
import '../icons.dart';
import '../providers/newsprovider.dart';
// import '../services/newsservice.dart';
import '../widgets/newscard.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    NewsModel news = ref.watch(newsProvider).newsModel;
    log(news.toString());
    bool isLoading = ref.watch(newsProvider).isLoading;
    log(isLoading.toString());

    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: isLoading
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: news.data!.length,
                itemBuilder: (context, index) {
                  return NewsCard(data: news.data![index]);
                },
              ),
        bottomNavigationBar:
            const GNav(mainAxisAlignment: MainAxisAlignment.center, tabs: [
          GButton(
            icon: MyIcons.home,
            text: ' Home',
          ),
          GButton(
            icon: MyIcons.discover,
            text: ' Discover',
          ),
          GButton(
            icon: MyIcons.bookmark,
            text: ' Bookmark',
          )
        ]),
      ),
    );
  }
}
