import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import 'home.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarScreenState createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {

  final _pageOptions = [const Home(),const Home(),const Home(),const Home(),const Home(),];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[0],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white, //This will change the drawer background to blue.
          //other styles
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          mouseCursor: SystemMouseCursors.grab,
          selectedIconTheme: const IconThemeData(color: Color(0xFF0FA59A)),
          selectedItemColor: const Color(0xFF0FA59A),
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold , color: Colors.grey),
          unselectedIconTheme: const IconThemeData(color: Colors.grey,),
          unselectedItemColor: Colors.grey,
          currentIndex: 0, //New
          //onTap: _onItemTapped,
          items: <BottomNavigationBarItem> [
            BottomNavigationBarItem(icon: Image.asset('assets/images/home.png',height: 30,width: 30,) , label: 'home'.tr().toString()),
            BottomNavigationBarItem(icon: Image.asset('assets/images/wallet.png',height: 30,width: 30,) , label: 'wallet'.tr().toString()),
            BottomNavigationBarItem(icon: Image.asset('assets/images/sales.png',height: 30,width: 30,) , label: 'sales'.tr().toString()),
            BottomNavigationBarItem(icon: Image.asset('assets/images/cart.png',height: 30,width: 30,) , label: 'orders'.tr().toString()),
            BottomNavigationBarItem(icon: Image.asset('assets/images/more.png',height: 30,width: 30,) , label: 'more'.tr().toString()),
          ],
        ),
      ),
    );
  }
}
