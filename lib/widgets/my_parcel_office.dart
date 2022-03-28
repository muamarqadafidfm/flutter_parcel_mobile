import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyParcellOffice extends StatefulWidget {
  const MyParcellOffice(
      {Key? key,
      required this.parcelOfficeCode,
      required this.parcelOfficeName,
      required this.parcelOfficeAddress,
      required this.parcelOfficeHours,
      required this.parcelOfficeStats,
      required this.parcelOfficeStatsNumber})
      : super(key: key);

  final String parcelOfficeCode,
      parcelOfficeHours,
      parcelOfficeName,
      parcelOfficeAddress,
      parcelOfficeStats,
      parcelOfficeStatsNumber;

  @override
  State<MyParcellOffice> createState() => _MyParcellOfficeState();
}

class _MyParcellOfficeState extends State<MyParcellOffice> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Theme.of(context).backgroundColor,
          boxShadow: [
            BoxShadow(
                spreadRadius: 0,
                blurRadius: 10,
                offset: const Offset(0, 0),
                color: Theme.of(context).shadowColor)
          ]),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.parcelOfficeCode, //1 
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                widget.parcelOfficeHours,//2
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.parcelOfficeName, //3
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
               widget.parcelOfficeAddress, //4
                style: Theme.of(context).textTheme.headline5,
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.parcelOfficeStats,  //5
                style: Theme.of(context).textTheme.headline5,
              ),
              //Contoh 1
              Container(
                height: 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.5),
                ),
                child: LinearProgressIndicator(
                  value:double.parse(widget.parcelOfficeStatsNumber),
                  color: Theme.of(context).appBarTheme.backgroundColor,
                  backgroundColor: Color(0xFFF8F8F8),
                ),
              ),
              // Contoh 2
              // SizedBox(
              //   height: 5,
              //   child: ClipRRect(
              //     borderRadius: BorderRadius.circular(2.5),
              //     child: LinearProgressIndicator(
              //       value: double.parse(widget.parcelOfficeStatsNumber),
              //       color: Theme.of(context).appBarTheme.backgroundColor,
              //       backgroundColor: Color(0xFFF8F8F8),
              //     ),
              //   ),
              // ),
            ],
          )
        ],
      ),
    );
  }
}
