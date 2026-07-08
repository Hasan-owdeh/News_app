import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widget/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });
  final List<CategoryModel> categories = const [
    CategoryModel(categoryName: 'Business', imageUrl: 'assets/images/business.png'),
    CategoryModel(categoryName: 'Entertainment', imageUrl: 'assets/images/entertainment.jpg'),
    CategoryModel(categoryName: 'Health', imageUrl: 'assets/images/health.jpg'),
    CategoryModel(categoryName: 'Science', imageUrl: 'assets/images/science.jpg'),
    CategoryModel(categoryName: 'Sports', imageUrl: 'assets/images/sports.jpg'),
    CategoryModel(categoryName: 'Technology', imageUrl: 'assets/images/technology.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,// this hight is must be same as the height of the container in the category card
      child: ListView.builder(
        scrollDirection: Axis.horizontal,//to make the list view horizontal
        itemCount: categories.length,
        itemBuilder: (context, index) 
      {
        return CategoryCard(
          category: categories[index]);
      }),
    );
  }
}