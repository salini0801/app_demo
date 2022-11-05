import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String amount;

  const ProductDetailScreen({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              width: double.infinity,
              child: Stack(children: [
                Image.network(
                  imageUrl,
                  width: double.maxFinite,
                  fit: BoxFit.fill,
                ),
                Positioned(
                    top: 5,
                    left: 5,
                    child: IconButton(
                      color: Colors.green,
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ))
              ]),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w700,
                        fontSize: 24),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    amount,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    'Description',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w600,
                        fontSize: 24),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    "food, substance consisting essentially of protein, carbohydrate, fat, and other nutrients used in the body of an organism to sustain growth and vital processes and to furnish energy.",
                    style: TextStyle(color: Colors.black54, fontSize: 14),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.grey.shade300,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 10.0, right: 12, left: 12, bottom: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                size: 40,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  fixedSize: const Size(180, 45),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(45))),
              onPressed: () {},
              child: const Text("ADD TO THE CART"),
            ),
          ]),
        ),
      ),
    );
  }
}
