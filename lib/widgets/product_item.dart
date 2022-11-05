import 'package:app_demo/models/top_deal_model.dart';
import 'package:flutter/material.dart';

import '../screens/product_detail_screen.dart';

class RiceItem extends StatelessWidget {
  static const routeName = '/Product_detail';

  List<TopDealModel> productitem;

  RiceItem({Key? key, required this.productitem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: productitem.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>  ProductDetailScreen(
                            amount: productitem[index].amount,
                            title: productitem[index].title,
                            imageUrl: productitem[index].imageUrl,
                            
                          )),
                );
              },
              child: SizedBox(
                width: 180,
                child: Card(
                  elevation: 2.0,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 120,
                        width: double.maxFinite,
                        child: Image.network(
                          productitem[index].imageUrl,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          children: [
                            Text(productitem[index].title),
                            const Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(productitem[index].amount),
                                ElevatedButton(
                                    onPressed: () {}, child: const Text("Add")),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
