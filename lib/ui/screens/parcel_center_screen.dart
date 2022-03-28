import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:parcel_shipping_courier/widgets/my_parcel_office.dart';
import '/src/locations.dart' as locations;

class ParcelCenterScreen extends StatefulWidget {
  const ParcelCenterScreen({Key? key}) : super(key: key);

  @override
  State<ParcelCenterScreen> createState() => _ParcelCenterScreenState();
}

class _ParcelCenterScreenState extends State<ParcelCenterScreen> {
  final Map<String, Marker> _markers = {};
  Future<void> _onMapCreated(GoogleMapController controller) async {
    final googleOffices = await locations.getGoogleOffices();

    BitmapDescriptor customIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(
          size: Size(24, 24),
        ),
        "assets/images/icon_marker.png");

    setState(() {
      _markers.clear();
      for (final office in googleOffices.offices) {
        final marker = Marker(
          icon: customIcon,
          markerId: MarkerId(office.name),
          position: LatLng(office.lat, office.lng),
          infoWindow: InfoWindow(
            title: office.name,
            snippet: office.address,
          ),
        );
        _markers[office.name] = marker;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: ListView(
          children: [
            Text(
              " parcel Centers",
              style: Theme.of(context).textTheme.headline1,
            ),
            SizedBox(
              height: 29,
            ),
            SizedBox(
              height: 221,
              child: GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: const CameraPosition(
                  target: LatLng(0, 0),
                  zoom: 2,
                ),
                markers: _markers.values.toSet(),
                gestureRecognizers: {
                  Factory<OneSequenceGestureRecognizer>(
                    () => EagerGestureRecognizer(),
                  )
                },
              ),
            ),
            MyParcellOffice(
              parcelOfficeCode: "1234567",
              parcelOfficeName: "PT RIzki Barokah",
              parcelOfficeAddress:
                  'Pakis Kembar,Kecamatan Pakis,Kabupaten Malang',
              parcelOfficeHours: 'Available 24/7',
              parcelOfficeStats: "Fully occupied",
              parcelOfficeStatsNumber: "1",
            ),
            SizedBox(
              height: 10,
            ),
            MyParcellOffice(
              parcelOfficeCode: "12345678",
              parcelOfficeName: "PT Dejavu Malai",
              parcelOfficeAddress: 'Soekarno Hatta,Kabupaten Malang',
              parcelOfficeHours: 'Available 24/7',
              parcelOfficeStats: "Fully occupied",
              parcelOfficeStatsNumber: "0.3",
            ),
            SizedBox(
              height: 10,
            ),
            MyParcellOffice(
              parcelOfficeCode: "20313123",
              parcelOfficeName: "PT Sejahtera",
              parcelOfficeAddress: 'Banjarmasis,Kota Malang',
              parcelOfficeHours: 'Available 24/7',
              parcelOfficeStats: "Fully occupied",
              parcelOfficeStatsNumber: "0.7",
            ),
          ],
        ),
      ),
    );
  }
}
