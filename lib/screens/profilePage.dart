import 'package:flutter/material.dart';

import '../src/colors.dart';

class profilePage extends StatelessWidget {
  const profilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title:
            Text("ShopEase"),
        ),

      body: Text("Profile Page"),
    );
  }
}
