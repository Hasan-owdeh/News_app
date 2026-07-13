import 'package:flutter/material.dart';
import 'package:news_app/widget/categories_list_view.dart';
import 'package:news_app/widget/news_list_view.dart';
import 'package:news_app/widget/news_tile.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,// removes the shadow of the app bar
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,//to minimize the size of the row to fit the content
          children: [
            Text('News',
            
             style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,//font weight change the style of the text
              )
            ),
            Text('Cloud',
            
             style: TextStyle(
              color: Colors.orange,
              fontSize: 24,
              fontWeight: FontWeight.bold,
         )
        )
          ],
          
        )
         
        
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child:CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
           

            NewsListView(),
          ],

          )
        // child: Column(
        //    children:[
        //     CategoriesListView(),
        //     SizedBox(
        //       height: 32,
        //     ),
        //     Expanded(child: NewsListView()),
        //   ]
        // ),
      )
    );
  }
}

