import 'package:flutter/material.dart';
import 'package:parcel_shipping_courier/parcel_app_theme.dart';
import 'package:parcel_shipping_courier/ui/screens/screens.dart';
import 'package:parcel_shipping_courier/widgets/widgets.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ParcelAppTheme.lightTheme,
      home: Scaffold(
        body:ParcelCenterScreen(),
        bottomNavigationBar: const MyButtomNavigationBar(),
      ),
    );
  }
}
