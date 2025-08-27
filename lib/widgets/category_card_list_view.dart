import 'package:flutter/material.dart';
import 'package:new_app/models/card_model.dart';
import 'package:new_app/widgets/category_card.dart';

class CategoryCardListView extends StatelessWidget {
  const CategoryCardListView({super.key});

  final List<CardModel> cards = const [
    CardModel(cardName: 'Business', image: 'assets/images/business.jpeg'),
    CardModel(
      cardName: 'Entertainment',
      image: 'assets/images/entertainment.jpg',
    ),
    CardModel(cardName: 'General', image: 'assets/images/general.jpg'),
    CardModel(cardName: 'Health', image: 'assets/images/health.jpg'),
    CardModel(cardName: 'Science', image: 'assets/images/science.jpg'),
    CardModel(cardName: 'Sports', image: 'assets/images/sports.jpg'),
    CardModel(cardName: 'Technology', image: 'assets/images/technology.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cards.length,
        itemBuilder: (context, index) {
          return CategoryCard(cardModel: cards[index]);
        },
      ),
    );
  }
}
