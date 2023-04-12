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

    return DefaultTabController(
      length: 6,
      child: SafeArea(
        child: Scaffold(
          // extendBody: true,
          // extendBodyBehindAppBar: true,
          backgroundColor: Colors.white,

          body: Column(
            children: [
              TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  labelPadding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  isScrollable: true,
                  padding: const EdgeInsets.all(5),
                  indicator: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(
                          width: 0.5,
                          color: Colors.grey,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(50)),
                  tabs: [
                    Tab(
                        height: 35,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 0.5,
                                  color: Colors.grey,
                                  style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(50)),
                          child: const Text(
                            'General',
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                        )),
                    Tab(
                        height: 35,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 0.5,
                                  color: Colors.grey,
                                  style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(50)),
                          child: const Text('Politics'),
                        )),
                    Tab(
                        height: 35,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 0.5,
                                  color: Colors.grey,
                                  style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(50)),
                          child: const Text('Fashion'),
                        )),
                    Tab(
                        height: 35,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 0.5,
                                  color: Colors.grey,
                                  style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(50)),
                          child: const Text('LifeStyle'),
                        )),
                    Tab(
                      height: 35,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 0.5,
                                color: Colors.grey,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(50)),
                        child: const Text('Sport'),
                      ),
                    ),
                    Tab(
                      height: 35,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 0.5,
                                color: Colors.grey,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(50)),
                        child: const Text('Business'),
                      ),
                    ),
                  ]),
              Expanded(
                child: isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : ListView.builder(
                        itemCount: news.data!.length,
                        itemBuilder: (context, index) {
                          return NewsCard(data: news.data![index]);
                        },
                      ),
              )
            ],
          ),
          bottomNavigationBar: Container(
            clipBehavior: Clip.antiAlias,
            margin: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
            child: GNav(
                padding: const EdgeInsets.fromLTRB(5, 15, 5, 15),
                gap: 1,
                // tabBackgroundColor: Colors.black,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                backgroundColor: Colors.black,
                tabs: [
                  GButton(
                    // backgroundColor: Colors.grey.shade300,
                    icon: MyIcons.home,
                    iconSize: 22,
                    // text: ' Home',
                    iconColor: Colors.grey.shade600,
                    textColor: Colors.grey[300],
                    iconActiveColor: Colors.grey[300],
                  ),
                  GButton(
                    // backgroundColor: Colors.grey.shade300,
                    icon: MyIcons.discover,
                    iconSize: 22,

                    // text: ' Discover',
                    iconColor: Colors.grey.shade600,
                    textColor: Colors.grey[300],
                    iconActiveColor: Colors.grey[300],
                  ),
                  GButton(
                    // backgroundColor: Colors.grey.shade300,
                    icon: MyIcons.bookmark,
                    iconSize: 22,

                    // text: ' Bookmark',
                    iconColor: Colors.grey.shade600,
                    textColor: Colors.grey[300],
                    iconActiveColor: Colors.grey[300],
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
