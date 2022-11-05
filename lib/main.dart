import 'package:app_demo/provider/banner_provider.dart';
import 'package:app_demo/provider/top_categories_provider.dart';
import 'package:app_demo/provider/top_deals_provider.dart';
import 'package:app_demo/screens/category_screen.dart';
import 'package:app_demo/screens/favorite_screen.dart';
import 'package:app_demo/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BannerProvider()),
        ChangeNotifierProvider(create: (context) => TopDealProvider()),
        ChangeNotifierProvider(create: (context) => TopCategoriesProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.green,
        ),
        home: const BottomNavigationBarScreen(
          items: [],
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen(
      {Key? key, required List<BottomNavigationBarItem> items})
      : super(key: key);

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int currentIndex = 0;
  final Screens = [
    const HomeScreen(),
    const FavoriteScreen(),
    const CategoryScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("Home"),
      // centerTitle: true,
      // ),
      body: Screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index) => setState(() {
                currentIndex = index;
              }),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_balance,
              ),
              label: 'categories',
              backgroundColor: Colors.blue,
            ),
          ]),
    );
  }
}
