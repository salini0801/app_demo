import 'package:flutter/material.dart';
class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FavoriteScreen",style: TextStyle(fontSize: 20),),
      ),
      body: Center(child: Text("  FAVORITES ",style: TextStyle(color: Colors.black,fontSize: 25),
      ),
      
      ),
    );
  }
}