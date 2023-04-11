import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news/models/newsmodel.dart';
import 'package:news/services/newsservice.dart';
part 'newsprovider.freezed.dart';

@freezed
class NewsState with _$NewsState {
  const factory NewsState({
    @Default(true) bool isLoading,
    required NewsModel newsModel,
  }) = _NewsState;

  const NewsState._();
}

class NewsNotifier extends StateNotifier<NewsState> {
  NewsNotifier() : super(NewsState(newsModel: NewsModel(data: []))) {
    loadNews();
  }

  loadNews() async {
    state = state.copyWith(isLoading: true);
    final newsResponse = await NewsService().fetchNews();
    final news = NewsModel.fromJson(newsResponse);
    state = state.copyWith(newsModel: news, isLoading: false);
  }
}

final newsProvider =
    StateNotifierProvider<NewsNotifier, NewsState>((ref) => NewsNotifier());



    

// class BoredSuggestionNotifier extends StateNotifier<NewsModel> {
//   BoredSuggestionNotifier() : super(NewsModel(data: [])) {
//     boredSuggestion();
//   }

//   Future boredSuggestion() async {
//     final response = await NewsService().fetchNews();
//     final news = NewsModel.fromJson(response);
//     return news;
//   }
// }

// final newsProvider = StateNotifierProvider<BoredSuggestionNotifier, NewsModel>(
//     (ref) => BoredSuggestionNotifier());
