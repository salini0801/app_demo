import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/categories_item.dart';
import '../provider/top_categories_provider.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context).size;
    final topcategoriesProvider =
        Provider.of<TopCategoriesProvider>(context, listen: false);

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "SHOP BY CATEGORIES",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_cart,
                    size: 30,
                  )),
            ],
          ),
          SizedBox(
            height: _mediaQuery.height * 0.8,
            child: CategoriesItem(
              categoriesitem: topcategoriesProvider.items,
            ),
          ),
        ]),
      ),
    );
  }
}
