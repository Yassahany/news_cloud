import 'package:flutter/material.dart';
import 'package:new_app/models/article_model.dart';
import 'package:new_app/services/news_service.dart';
import 'package:new_app/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});
  final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  late Future<List<ArticleModel>> future;
  @override
  void initState() {
    super.initState();
    future = NewsService().getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(articles: snapshot.data ?? []);
        } else if (snapshot.hasError) {
          return SliverFillRemaining(
            child: Text('oops there is an error, try again later'),
          );
        } else {
          return SliverFillRemaining(
            child: Center(child: CircularProgressIndicator(color: Colors.blue)),
          );
        }
      },
    );
  }
}
