import 'package:flutter/cupertino.dart';

import '../models/rice_item_model.dart';

class RiceItemProvider with ChangeNotifier {
  final List<RiceItemModel> _items = [
    RiceItemModel(
        imageUrl:
            "https://t4.ftcdn.net/jpg/02/95/19/87/240_F_295198760_LrTV4IkNjM7TMxhTzv98KMOuvb2RmKgy.jpg",
        title: "Ar Hmt Rice _25 kgs",
        amount: "456.00"),
    RiceItemModel(
        imageUrl:
            "https://t4.ftcdn.net/jpg/02/11/09/49/240_F_211094922_KoneU6ujTdfUhZzfpZ0pK1EDyq371JTC.jpg",
        title: "Kundu Pachai Arisi _1kgs",
        amount: "550"),
    RiceItemModel(
        imageUrl:
            "https://t4.ftcdn.net/jpg/02/94/42/69/240_F_294426924_FYxUALPGXtPfSf3kyEbhBZnpD0IrLxiQ.jpg",
        title: "Btc Angur _1kgs",
        amount: "765"),
    RiceItemModel(
        imageUrl:
            "https://as1.ftcdn.net/v2/jpg/03/56/90/98/1000_F_356909896_tDxqXCWAmNm5wYF70FPwAcDM253NSGUB.jpg",
        title: "Jmr Rice _25kgs",
        amount: "1200"),
    RiceItemModel(
        imageUrl:
            "https://t3.ftcdn.net/jpg/05/08/08/20/240_F_508082055_BiKosi8bgLHR32VdRPDYcDEYLPCK5FBO.jpg",
        title: "Jothi Rice_25kgs",
        amount: "1324"),
    RiceItemModel(
        imageUrl:
            "https://t4.ftcdn.net/jpg/04/47/56/95/240_F_447569574_BpvyqXAw4HtMCrfZohWvw8i8UWUrm2NM.jpg",
        title: "Btc Kolangal Rice _35kgs",
        amount: "2130"),
    RiceItemModel(
        imageUrl:
            "https://t4.ftcdn.net/jpg/02/11/09/51/240_F_211095191_N45FTCTFfTCYF8OmLJOfvAbB7G63cqLq.jpg",
        title: "Vip Briyani Masala Sm",
        amount: "6543"),
    RiceItemModel(
        imageUrl:
            "https://t4.ftcdn.net/jpg/02/11/09/51/240_F_211095191_N45FTCTFfTCYF8OmLJOfvAbB7G63cqLq.jpg",
        title: "Kamalam Rice _25kgs",
        amount: "5436"),
  ];
  List<RiceItemModel> get items {
    return [..._items];
  }
}
