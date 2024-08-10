import 'package:flutter/material.dart';
import 'package:shopease/screens/cartPage.dart';
import 'package:shopease/screens/couponsPage.dart';
import 'package:shopease/screens/historyPage.dart';
import 'package:shopease/screens/mapPage.dart';
import 'package:shopease/screens/profilePage.dart';

import '../src/colors.dart';

class appBottom extends StatefulWidget {
  // final Map<dynamic, dynamic> users;

  // const appBottom({Key? key, required this.users}) : super(key: key);

  @override
  State<appBottom> createState() => _appBottomState();
}

class _appBottomState extends State<appBottom> {
  int selectedPageIndex = 0;
  late List<Widget> _widgetsOptions;

  @override
  void initState() {
    super.initState();
    _widgetsOptions = <Widget>[
      CartPage(),
      historyPage(),
      couponsPage(),
      mapPage()// Pass users data to HomePage
      // AddIncident(users: widget.users),
      // UserProfile(users: widget.users),
    ];
  }

  void onItemTapped(int index) {
    setState(() {
      selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Row(
          children: [
            Text("ShopEase"),
            SizedBox(width: size.width*0.6,),
            InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => profilePage(),));
              },
                child: Icon(Icons.person)),
          ],
        ),
      ),
      body: Center(child: _widgetsOptions[selectedPageIndex]),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onItemTapped,
        currentIndex: selectedPageIndex,
        elevation: 10,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            activeIcon: Icon(Icons.shopping_cart_rounded),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            activeIcon: Icon(Icons.history),
            label: "History",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.discount_outlined),
            activeIcon: Icon(Icons.discount_rounded),
            label: "Coupons",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),
            activeIcon: Icon(Icons.map_rounded),
            label: "Map",
          ),
        ],
      ),
    );
  }
}