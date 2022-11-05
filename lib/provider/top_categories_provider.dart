
import 'package:flutter/cupertino.dart';

import '../models/top_categories_model.dart';


class TopCategoriesProvider with ChangeNotifier{

  final List<TopCategoriesModel> _items=[
    TopCategoriesModel(imageUrl: "https://as1.ftcdn.net/v2/jpg/04/30/79/34/1000_F_430793418_Z6Z2s9Oq9PUZ3YGR21Z2DqIccEkWs6vI.jpg", 
    title: "Rice items"),
    TopCategoriesModel(imageUrl: "https://t3.ftcdn.net/jpg/03/43/95/14/240_F_343951467_wcHoD2cVDGcDoWIDjB1NJkVlNNHYuCqh.jpg", 
    title: "oil items"),
    TopCategoriesModel(imageUrl: "https://t4.ftcdn.net/jpg/03/06/94/21/240_F_306942150_bBoUsbUmxUagnjkOCE4uOQAIY9rRK7cm.jpg",
     title: "Ready mix"),
    TopCategoriesModel(imageUrl: "https://t3.ftcdn.net/jpg/02/71/38/68/240_F_271386874_OcJF8AUkMSB1c146BImmtaU6fHqsNdyc.jpg", 
    title: "seasonal foods"),
    TopCategoriesModel(imageUrl: "https://t3.ftcdn.net/jpg/02/19/05/00/240_F_219050028_HsAOzUAjatZgOHkndBVHxW2zjChSTybb.jpg",
     title: "Sauces & pickles"),
    TopCategoriesModel(imageUrl: "https://t4.ftcdn.net/jpg/03/22/20/15/240_F_322201595_QMsWxvcpu8nSVwAPxceoKqsOlFg5KeMa.jpg",
     title: "personal care"),


 ];
  List<TopCategoriesModel> get items{
    return [..._items];
}

}