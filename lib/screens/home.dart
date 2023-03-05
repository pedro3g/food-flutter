import 'package:flutter/material.dart';
import 'package:food/widgets/categories.dart';
import 'package:food/widgets/popular_items.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: CategoriesWidget(),
            ),
            PopularItems(),
          ]),
    );
  }
}
