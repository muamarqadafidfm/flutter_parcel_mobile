import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:parcel_shipping_courier/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Padding(
            padding: EdgeInsets.only(left: 24),
            child: Text(
              "Track Parcel",
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          centerTitle: false,
          floating: true,
          snap: false,
          pinned: true,
          titleSpacing: 0,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 25),
              child: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                      'http://2.bp.blogspot.com/-C4cx1w9K-U4/VlgTkutzn9I/AAAAAAAB0vY/zqxDNRCsXtc/s1600/tumblr_nydtwfLikl1ukj9x6o4_1280.jpg'),
                ),
              ),
            ),
          ],
          shadowColor: Colors.transparent,
          expandedHeight: 426,
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          )),
          flexibleSpace: FlexibleSpaceBar(
            background: Column(
              children: [
                Expanded(
                    child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 64),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Enter parcel number or scan QR code",
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 7, bottom: 40),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 49,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Theme.of(context).backgroundColor,
                                ),
                                child: const TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              padding: const EdgeInsets.all(14),
                              width: 50,
                              height: 49,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Theme.of(context).backgroundColor,
                              ),
                              child: SvgPicture.asset(
                                'assets/images/icon_qrcode.svg',
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 48,
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Track Parcel",
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          style: Theme.of(context).textButtonTheme.style,
                        ),
                      ),
                    ],
                  ),
                )),
              ],
            ),
          ),
        ),
        const SliverPadding(
          padding: EdgeInsets.only(
            top: 32,
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "My Parcels",
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (_, int index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Container(
                  height: 174,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Theme.of(context).backgroundColor,
                    boxShadow: [
                      BoxShadow(
                          color: Theme.of(context).shadowColor,
                          spreadRadius: 0,
                          blurRadius: 1000,
                          offset: const Offset(0, 0)),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "08212133131412323213123",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          Container(
                            height: 31,
                            width: 78,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://th.bing.com/th/id/R.217d03013c51c76db7cf0e9b50154d4b?rik=%2bIHXwrO3Il%2biZw&riu=http%3a%2f%2flogo-logos.com%2fwp-content%2fuploads%2f2016%2f12%2fAmazon_logo.png&ehk=7l4%2bkNvbCTrXLwiCGyH6iX7O5JHdUjlF%2fKRCjwG2o2o%3d&risl=&pid=ImgRaw&r=0'))),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "in transit",
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Last Update : 3 Hours ago",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: 5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2.5),
                            ),
                            child: LinearProgressIndicator(
                              value: 0.8,
                              color:
                                  Theme.of(context).appBarTheme.backgroundColor,
                              backgroundColor: Color(0xFFF8F8F8),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 60,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Details",
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                                SvgPicture.asset(
                                    'assets/images/icon_details.svg')
                              ],
                            ),
                            Container(
                              height: 1,
                              color: Colors.black,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
            childCount: 3,
          ),
        ),
      ],
    );
  }
}
