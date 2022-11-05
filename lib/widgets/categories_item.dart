import 'package:flutter/material.dart';

import '../models/top_categories_model.dart';

class CategoriesItem extends StatelessWidget {
  List<TopCategoriesModel> categoriesitem;
  CategoriesItem({Key? key, required this.categoriesitem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          physics: const AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: categoriesitem.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.9,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemBuilder: (context, i) {
            return Column(
              children: [
                Image.network(categoriesitem[i].imageUrl),
                Text(
                  categoriesitem[i].title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            );
          }),
    );
  }
}
