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
        // extendBody: true,
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
        bottomNavigationBar: Container(
          clipBehavior: Clip.antiAlias,
          margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: GNav(
              padding: const EdgeInsets.all(20),
              gap: 2,
              // tabBackgroundColor: Colors.black,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              backgroundColor: Colors.black,
              tabs: [
                GButton(
                  // backgroundColor: Colors.grey.shade300,
                  icon: MyIcons.home,
                  // text: ' Home',
                  iconColor: Colors.grey.shade600,
                  textColor: Colors.grey[300],
                  iconActiveColor: Colors.grey[300],
                ),
                GButton(
                  // backgroundColor: Colors.grey.shade300,
                  icon: MyIcons.discover,
                  // text: ' Discover',
                  iconColor: Colors.grey.shade600,
                  textColor: Colors.grey[300],
                  iconActiveColor: Colors.grey[300],
                ),
                GButton(
                  // backgroundColor: Colors.grey.shade300,
                  icon: MyIcons.bookmark,
                  // text: ' Bookmark',
                  iconColor: Colors.grey.shade600,
                  textColor: Colors.grey[300],
                  iconActiveColor: Colors.grey[300],
                )
              ]),
        ),
      ),
    );
  }
}
