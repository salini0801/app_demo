
import 'package:flutter/cupertino.dart';

import '../models/top_deal_model.dart';


class TopDealProvider with ChangeNotifier{



  final List<TopDealModel> _items = [
    TopDealModel(imageUrl: "https://t3.ftcdn.net/jpg/01/81/00/96/240_F_181009680_ClBMv7evS67OAEjO87JIA3Y2jAssBZ8E.jpg", 
    title: "Butter", amount: "50.00"),
    TopDealModel(imageUrl: "https://t4.ftcdn.net/jpg/01/94/85/41/240_F_194854168_QE7HrFlNN5HWBWrPop7NSYth1C10bOls.jpg", 
    title: "Biscuit", amount: "70.00"),
    TopDealModel(imageUrl: "https://t4.ftcdn.net/jpg/02/59/09/03/240_F_259090320_mnUNJh5IQ28XfR9AzEk2Rh81ypMO5gJi.jpg",
     title: "Chocolate", amount: "45.00"),
    TopDealModel(imageUrl: "https://t4.ftcdn.net/jpg/03/57/21/71/240_F_357217104_CzVVGb0Rug9YtG3qqjbv9S8TvbtYOQVR.jpg",
     title: "Diary milk", amount: "77.00"),
    TopDealModel(imageUrl: "https://t4.ftcdn.net/jpg/01/13/98/65/240_F_113986540_1cyD3vJ8FERYTu4Lxx1Js0VErlhCzRZq.jpg", 
    title: "Ice cream", amount: "98.00"),
    

  ];

List<TopDealModel> get items{
    return [..._items];
}

}