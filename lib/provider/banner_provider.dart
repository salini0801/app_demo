import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/banner_model.dart';

class BannerProvider with ChangeNotifier {
  final List<BannerModel> _items = [
    BannerModel(
        imageUrl:
            "https://t4.ftcdn.net/jpg/01/99/94/77/240_F_199947767_mTCb95rUAJWTZcCXfSsijGvx9mXkoJ3Q.jpg",
        title: "MobileBanner"),
  ];
  List<BannerModel> get items {
    return [..._items];
  }
}
