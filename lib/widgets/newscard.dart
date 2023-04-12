import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/constants/constants.dart';
import 'package:news/models/newsmodel.dart';

import '../icons.dart';

class NewsCard extends StatelessWidget {
  final Data data;
  const NewsCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(top: 5, left: 10, right: 10),
      height: 160,
      decoration: const BoxDecoration(
        border: Border(
            bottom: BorderSide(
                color: Colors.grey, width: 0.5, style: BorderStyle.solid)),
        // borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.category.toString().toUpperCase(),
                      style: GoogleFonts.poppins(
                          letterSpacing: 1,
                          color: Colors.red.shade700,
                          fontSize: 11,
                          fontWeight: FontWeight.bold),
                      maxLines: 1,
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      data.title.toString(),
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16,
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
                  key: UniqueKey(),
                  progressIndicatorBuilder: (context, url, progress) => Center(
                      child: CircularProgressIndicator(
                    value: progress.progress,
                  )),
                  imageUrl: data.image ?? 'lib/images/discover.png',
                  errorWidget: (context, url, error) {
                    return const Icon(Icons.error);
                  },
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    '4h ago  .  ',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  Text(
                    '21 min read',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    alignment: Alignment.centerRight,
                    onPressed: () {},
                    icon: Icon(
                      MyIcons.bookmark,
                      size: 22,
                      color: Colors.grey[600],
                    ),
                  ),
                  IconButton(
                      alignment: Alignment.centerRight,
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_horiz_outlined,
                        color: Colors.grey[600],
                      ))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

// class NewsCard extends StatelessWidget {
//   final Data data;
//   const NewsCard({super.key, required this.data});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(
//         bottom: 10,
//       ),
//       child: Container(
//         // padding: const EdgeInsets.all(10),
//         // margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
//         height: 410,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           color: Colors.grey[200],
//           // boxShadow: neoDesign,
//         ),
//         child: Column(
//           children: [
//             ClipRRect(
//               borderRadius: const BorderRadius.only(
//                   topLeft: Radius.circular(20), topRight: Radius.circular(20)),
//               clipBehavior: Clip.antiAlias,
//               child: CachedNetworkImage(
//                 key: UniqueKey(),
//                 progressIndicatorBuilder: (context, url, progress) => Center(
//                     child: CircularProgressIndicator(
//                   value: progress.progress,
//                 )),
//                 placeholder: (context, url) =>
//                     const CircularProgressIndicator(),
//                 imageUrl: data.image!,
//                 errorWidget: (context, url, error) {
//                   return const Icon(Icons.error);
//                 },
//                 width: double.infinity,
//                 height: 280,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             Padding(
//               padding:
//                   const EdgeInsets.only(top: 4, bottom: 2, right: 10, left: 10),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     children: [
//                       Text(
//                         data.author.toString().toUpperCase(),
//                         style: GoogleFonts.amaranth(
//                             letterSpacing: 1,
//                             color: Colors.red.shade700,
//                             fontSize: 12,
//                             fontWeight: FontWeight.normal),
//                         maxLines: 1,
//                         textAlign: TextAlign.start,
//                       ),
//                       Text(
//                         '  -  4h ago  .  ',
//                         style: GoogleFonts.poppins(
//                             color: Colors.black,
//                             fontSize: 11,
//                             fontWeight: FontWeight.normal),
//                       ),
//                       Text(
//                         '21 min read',
//                         style: GoogleFonts.poppins(
//                             color: Colors.black,
//                             fontSize: 11,
//                             fontWeight: FontWeight.normal),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 2),
//                   Column(
//                     children: [
//                       Text(
//                         data.title.toString(),
//                         style: GoogleFonts.poppins(
//                             color: Colors.black,
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold),
//                         softWrap: true,
//                         maxLines: 2,
//                         overflow: TextOverflow.fade,
//                       ),
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       IconButton(
//                           alignment: Alignment.centerRight,
//                           onPressed: () {},
//                           icon: const Icon(Icons.favorite_border_outlined)),
//                       IconButton(
//                         alignment: Alignment.centerRight,
//                         onPressed: () {},
//                         icon: const Icon(
//                           MyIcons.bookmark,
//                         ),
//                       ),
//                       IconButton(
//                           alignment: Alignment.centerRight,
//                           onPressed: () {},
//                           icon: const Icon(Icons.more_horiz_outlined)),
//                     ],
//                   ),
//                 ],
//               ),
//             )

//             // const Divider(),
//           ],
//         ),
//       ),
//     );
//   }
// }
