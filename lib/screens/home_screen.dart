import 'package:app_demo/provider/banner_provider.dart';
import 'package:app_demo/provider/top_categories_provider.dart';
import 'package:app_demo/provider/top_deals_provider.dart';
import 'package:app_demo/widgets/product_item.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bannerProvider = Provider.of<BannerProvider>(context, listen: false);
    final topdealProvider =
        Provider.of<TopDealProvider>(context, listen: false);
    final topcategoriesProvider =
        Provider.of<TopCategoriesProvider>(context, listen: false);
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
          padding: const EdgeInsets.only(top: 40, left: 12, right: 12),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: const [
                Text(
                  "WELCOME TO THE UTH ECOM ",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.shopping_cart,
                  color: Colors.green,
                  size: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: const [
                Text("Delivery to Ariyalur,  pincode 645890"),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.maxFinite,
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 15, bottom: 15),
              decoration: BoxDecoration(
                border: const Border(
                  top: BorderSide(
                    width: 1,
                    color: Colors.black54,
                  ),
                  bottom: BorderSide(
                    width: 1,
                    color: Colors.black54,
                  ),
                  left: BorderSide(
                    width: 1,
                    color: Colors.black54,
                  ),
                  right: BorderSide(
                    width: 1,
                    color: Colors.black54,
                  ),
                ),
                borderRadius: BorderRadius.circular(45),
              ),
              child: Row(
                children: const [
                  Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "search a device",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                child: CarouselSlider.builder(
              itemCount: bannerProvider.items.length,
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
              ),
              itemBuilder: (context, index, realIdx) {
                return Container(
                  child: Center(
                      child: Image.network(bannerProvider.items[index].imageUrl,
                          fit: BoxFit.cover, width: 1000)),
                );
              },
            )),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: const [
                Text(
                  "Top Deals",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
                height: 250,
                child: RiceItem(
                  productitem: topdealProvider.items,
                )),
            const Text(
              "Top Categories",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.9,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5),
                  itemBuilder: (context, i) {
                    return Column(
                      children: [
                        Container(
                          child: Image.network(
                              topcategoriesProvider.items[i].imageUrl),
                        ),
                        Text(topcategoriesProvider.items[i].title),
                      ],
                    );
                  }),
            ),
            const Text(
              "Rice items",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
                height: 250,
                child: RiceItem(
                  productitem: topdealProvider.items,
                )),
          ])),
    ));
  }
}
