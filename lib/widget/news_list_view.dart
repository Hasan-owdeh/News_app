import 'package:flutter/material.dart';
import 'package:news_app/widget/news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
     SliverList(delegate:SliverChildListDelegate((context,index){
              ithemCount: 10, // Replace with actual article count
            return NewsTile(), 
            }
             )
             ),
  }
}
