import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SendParcelCheckoutScreen extends StatefulWidget {
  const SendParcelCheckoutScreen({Key? key}) : super(key: key);

  @override
  State<SendParcelCheckoutScreen> createState() =>
      _SendParcelCheckoutScreenState();
}

class _SendParcelCheckoutScreenState extends State<SendParcelCheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: ListView(
            children: [
              Text(
                "Checkout",
                style: Theme.of(context).textTheme.headline1,
              ),
              SizedBox(
                height: 21,
              ),
              Container(
                height: 207,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 19),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey.shade200,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/img_card_background.png'),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "****  **** **** 0412",
                      style: Theme.of(context)
                          .textTheme
                          .headline2
                          ?.copyWith(color: Colors.white),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "PT PARCEL MALANG",
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(color: Colors.white),
                        ),
                        Text(
                          "27/03",
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: _buildBottomSheet(),
    );
  }

  Widget _buildBottomSheet() {
    return Container(
      padding: EdgeInsets.all(24),
      height: MediaQuery.of(context).size.height * 0.5,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(16),
          topLeft: Radius.circular(16),
        ),
        color: Color(0xFff5f5f5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Sumary",
                style: Theme.of(context).textTheme.headline3,
              ),
              SizedBox(
                width: 45,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Edit",
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        SvgPicture.asset('assets/images/icon_details.svg')
                      ],
                    ),
                    Container(
                      height: 1,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Parcal",
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                "Muamar\DAFADEJAVU0@gmail.com\n0823123124\nKecamatan Pakis Desa Pakis Kembar,Malang", // (\n untuk enter)
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Parcel Size",
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                "Medium", // (\n untuk enter)
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Delivery Method",
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                "From door to door", // (\n untuk enter)
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
          SizedBox(
            height: 48,
            width: double.infinity,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Pay Rp300000",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              style: Theme.of(context).textButtonTheme.style,
            ),
          ),
        ],
      ),
    );
  }
}
