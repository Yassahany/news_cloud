import 'package:flutter/material.dart';
import 'package:new_app/widgets/app_bar_title.dart';
import 'package:new_app/widgets/category_card_list_view.dart';
import 'package:new_app/widgets/news_list_view_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: appBarTitle(),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoryCardListView()),
            NewsListViewBuilder(category: 'general'),
          ],
        ),
      ),
    );
  }
}
