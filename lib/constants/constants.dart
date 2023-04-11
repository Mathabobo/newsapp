import 'package:flutter/material.dart';

class ApiUrls {
  static const baseUrl =
      'http://api.mediastack.com/v1/news?access_key=e15d01423b994808a73a56aba26c9ee3';

  // static const baseUrl =
  //     'https://api.thenewsapi.com/v1/news/all?api_token=i1Hx9CQIY0HQMpL5bDG4v8QRB4JxwDC1teiVlSMf';
}

// String bookmark = 'lib/icons/bookmark.png';
// String home = 'lib/icons/home.png';
// String discover = 'lib/icons/discover.png';
// String setting = 'lib/icons/setting.png';

List<BoxShadow> neoDesign = [
  //bottom right shadow is darker
  BoxShadow(
      color: Colors.grey.shade600, offset: const Offset(5, 5), blurRadius: 15),
  //top left shadow is lighter
  const BoxShadow(color: Colors.white, offset: Offset(-5, -5), blurRadius: 20),
];
