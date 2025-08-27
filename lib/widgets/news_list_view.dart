import 'package:flutter/material.dart';
import 'package:new_app/models/article_model.dart';
import 'package:new_app/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  NewsListView({super.key, required this.articles});
  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: NewsTile(articleModel: articles[index]),
        );
      }, childCount: articles.length),
    );
  }
}
