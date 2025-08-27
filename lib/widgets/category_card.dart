import 'package:flutter/material.dart';
import 'package:new_app/models/card_model.dart';
import 'package:new_app/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.cardModel});
  final CardModel cardModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(category: cardModel.cardName);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8, left: 2),
        child: Container(
          width: 170,
          height: 85,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.amber,

            image: DecorationImage(
              image: AssetImage(cardModel.image),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Text(
              cardModel.cardName,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
