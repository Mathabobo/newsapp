import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/models/newsmodel.dart';

import '../icons.dart';

class NewsCard extends StatelessWidget {
  final Data data;
  const NewsCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
      height: 170,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white70),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      data.category.toString().toUpperCase(),
                      style: GoogleFonts.luckiestGuy(
                          letterSpacing: 1,
                          color: Colors.red.shade700,
                          fontSize: 13,
                          fontWeight: FontWeight.normal),
                      maxLines: 1,
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 7),
                    Text(
                      data.title.toString(),
                      style: GoogleFonts.amaranth(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                      softWrap: true,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 25),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CachedNetworkImage(
                  imageUrl: data.image ?? '',
                  errorWidget: (context, url, error) {
                    return const Icon(Icons.error);
                  },
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Text('4h ago  .  '),
                  Text('21 min read'),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    alignment: Alignment.centerRight,
                    onPressed: () {},
                    icon: const Icon(
                      MyIcons.bookmark,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  IconButton(
                      alignment: Alignment.centerRight,
                      onPressed: () {},
                      icon: const Icon(Icons.more_horiz_outlined))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
