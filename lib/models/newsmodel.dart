// ignore_for_file: public_member_api_docs, sort_constructors_first

class NewsModel {
  Pagination? pagination;
  List<Data>? data;

  NewsModel({this.pagination, this.data});

  NewsModel.fromJson(Map<String, dynamic> json) {
    pagination = json['pagination'] != null
        ? Pagination.fromJson(json['pagination'])
        : null;
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (pagination != null) {
      data['pagination'] = pagination!.toJson();
    }
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Pagination {
  int? limit;
  int? offset;
  int? count;
  int? total;

  Pagination({this.limit, this.offset, this.count, this.total});

  Pagination.fromJson(Map<String, dynamic> json) {
    limit = json['limit'];
    offset = json['offset'];
    count = json['count'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['limit'] = limit;
    data['offset'] = offset;
    data['count'] = count;
    data['total'] = total;
    return data;
  }
}

class Data {
  String? author;
  String? title;
  String? description;
  String? url;
  String? source;
  String? image;
  String? category;
  String? language;
  String? country;
  String? publishedAt;

  Data(
      {this.author,
      this.title,
      this.description,
      this.url,
      this.source,
      this.image,
      this.category,
      this.language,
      this.country,
      this.publishedAt});

  Data.fromJson(Map<String, dynamic> json) {
    author = json['author'];
    title = json['title'];
    description = json['description'];
    url = json['url'];
    source = json['source'];
    image = json['image'];
    category = json['category'];
    language = json['language'];
    country = json['country'];
    publishedAt = json['published_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['author'] = author;
    data['title'] = title;
    data['description'] = description;
    data['url'] = url;
    data['source'] = source;
    data['image'] = image;
    data['category'] = category;
    data['language'] = language;
    data['country'] = country;
    data['published_at'] = publishedAt;
    return data;
  }
}

// class NewsModel {
//   Meta? meta;
//   List<Data>? data;

//   NewsModel({this.meta, this.data});

//   NewsModel.fromJson(Map<String, dynamic> json) {
//     meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
//     if (json['data'] != null) {
//       data = <Data>[];
//       json['data'].forEach((v) {
//         data!.add(Data.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (meta != null) {
//       data['meta'] = meta!.toJson();
//     }
//     if (this.data != null) {
//       data['data'] = this.data!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Meta {
//   int? found;
//   int? returned;
//   int? limit;
//   int? page;

//   Meta({this.found, this.returned, this.limit, this.page});

//   Meta.fromJson(Map<String, dynamic> json) {
//     found = json['found'];
//     returned = json['returned'];
//     limit = json['limit'];
//     page = json['page'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['found'] = found;
//     data['returned'] = returned;
//     data['limit'] = limit;
//     data['page'] = page;
//     return data;
//   }
// }

// class Data {
//   String? uuid;
//   String? title;
//   String? description;
//   String? keywords;
//   String? snippet;
//   String? url;
//   String? imageUrl;
//   String? language;
//   String? publishedAt;
//   String? source;
//   List<String>? categories;
//   // ignore: unnecessary_question_mark, prefer_void_to_null
//   Null? relevanceScore;
//   String? locale;

//   Data(
//       {this.uuid,
//       this.title,
//       this.description,
//       this.keywords,
//       this.snippet,
//       this.url,
//       this.imageUrl,
//       this.language,
//       this.publishedAt,
//       this.source,
//       this.categories,
//       this.relevanceScore,
//       this.locale});

//   Data.fromJson(Map<String, dynamic> json) {
//     uuid = json['uuid'];
//     title = json['title'];
//     description = json['description'];
//     keywords = json['keywords'];
//     snippet = json['snippet'];
//     url = json['url'];
//     imageUrl = json['image_url'];
//     language = json['language'];
//     publishedAt = json['published_at'];
//     source = json['source'];
//     categories = json['categories'].cast<String>();
//     relevanceScore = json['relevance_score'];
//     locale = json['locale'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['uuid'] = uuid;
//     data['title'] = title;
//     data['description'] = description;
//     data['keywords'] = keywords;
//     data['snippet'] = snippet;
//     data['url'] = url;
//     data['image_url'] = imageUrl;
//     data['language'] = language;
//     data['published_at'] = publishedAt;
//     data['source'] = source;
//     data['categories'] = categories;
//     data['relevance_score'] = relevanceScore;
//     data['locale'] = locale;
//     return data;
//   }
// }
