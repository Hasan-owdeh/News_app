import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 16.0
        ),
      child: Container(
          height: 150,
          width: 200,
          decoration:BoxDecoration(
            image: DecorationImage(//to add an image to the container
              image: AssetImage(category.imageUrl),//to load the image from the assets folder
              fit: BoxFit.cover, //to cover the entire container with the image
            ),
            borderRadius: BorderRadius.circular(15),
      
          ),
          child: Center(
            child: Text(category.categoryName,//
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ),
    );
  }
}