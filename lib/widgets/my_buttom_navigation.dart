import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:parcel_shipping_courier/ui/screens/screens.dart';

class MyButtomNavigationBar extends StatefulWidget {
  const MyButtomNavigationBar({Key? key}) : super(key: key);

  @override
  State<MyButtomNavigationBar> createState() => _MyButtomNavigationBarState();
}

class _MyButtomNavigationBarState extends State<MyButtomNavigationBar> {
  int _selectedIndex = 0;

  List _ListPage = [
    HomeScreen(),
    SendParcelCheckoutScreen(),
    SendParcelDetailScreen(),
    ParcelCenterScreen(),
  ]; // One tap to new page

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _ListPage[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        selectedLabelStyle: Theme.of(context).textTheme.headline5,
        unselectedLabelStyle: Theme.of(context).textTheme.headline5,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: _selectedIndex == 0
                  ? SvgPicture.asset('assets/images/icon_my_parcels.svg')
                  : SvgPicture.asset('assets/images/icon_my_parcels_grey.svg'),
              label: 'My Parcels'),
          BottomNavigationBarItem(
              icon: _selectedIndex == 1
                  ? SvgPicture.asset('assets/images/icon_send_parcel.svg')
                  : SvgPicture.asset('assets/images/icon_send_parcel.svg'),
              label: 'My Parcels'),
          BottomNavigationBarItem(
              icon: _selectedIndex == 2
                  ? SvgPicture.asset('assets/images/icon_parcel_center.svg')
                  : SvgPicture.asset('assets/images/icon_parcel_center.svg'),
              label: 'My Parcels'),
          BottomNavigationBarItem(
              icon: _selectedIndex == 3
                  ? SvgPicture.asset('assets/images/icon_parcel_center.svg')
                  : SvgPicture.asset('assets/images/icon_parcel_center.svg'),
              label: 'My Parcels'),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Theme.of(context).unselectedWidgetColor,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
