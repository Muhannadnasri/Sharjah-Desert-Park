import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
// import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:location/location.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:location/location.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

import '../theme/color.dart';
import '../widgets/global.dart';

class MyParkingPage extends StatefulWidget {
  @override
  State<MyParkingPage> createState() => _MyParkingPageState();
}

class _MyParkingPageState extends State<MyParkingPage> {
  late Position _currentPosition;

  LatLng _initialcameraposition = LatLng(20.5937, 78.9629);

  late GoogleMapController _controller;
  bool check = false;
  final Geolocator geolocator = Geolocator();
  Map<MarkerId, Marker> markers =
      <MarkerId, Marker>{}; // CLASS MEMBER, MAP OF MARKS
  static const String _latitude = "car_location_latitude";
  static const String _longitude = "car_location_longitude";

  void _onMapCreated(GoogleMapController _cntlr) {
    _controller = _cntlr;
  }

  static void setCarLocation(Position position) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setDouble(_longitude, position.longitude);
    prefs.setDouble(_latitude, position.latitude);

    print(
        "Car's location has been set to (${position.latitude}, ${position.longitude})");
  }

  viewCarLocation() async {
    // setState(() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    double? lat = prefs.getDouble(_latitude);
    double? lng = prefs.getDouble(_longitude);

    // var newPosition = CameraPosition(target: LatLng(lat!, lng!), zoom: 16);
    setState(() {
      if (prefs.containsKey(_latitude) & prefs.containsKey(_longitude)) {
        //   _currentPosition = LatLng(_longitude, _longitude) as Position;
        check = true;
        CameraUpdate updates = CameraUpdate.newCameraPosition(
            CameraPosition(target: LatLng(lat!, lng!), zoom: 16));

        _controller.moveCamera(updates);

        var markerIdVal = 'Saved_Location';
        final MarkerId markerId = MarkerId(markerIdVal);

        // creating a new MARKER
        final Marker marker = Marker(
          markerId: markerId,
          position: LatLng(
            lat,
            lng,
          ),
          infoWindow: InfoWindow(title: markerIdVal, snippet: '*'),
          onTap: () {
            // _onMarkerTapped(markerId);
          },
        );

        setState(() {
          // adding a new marker to map
          markers[markerId] = marker;
        });
      } else {
        check = false;
      }
    });

    // });

    // Position _currentPosition = LatLng(lat!, lng!) as Position;
  }

  void addMyCar() {
    var markerIdVal = 'Saved_Location';
    final MarkerId markerId = MarkerId(markerIdVal);

    // creating a new MARKER
    final Marker marker = Marker(
      markerId: markerId,
      position: LatLng(
        _currentPosition.latitude,
        _currentPosition.longitude,
      ),
      infoWindow: InfoWindow(title: markerIdVal, snippet: '*'),
      onTap: () {
        // _onMarkerTapped(markerId);
      },
    );

    setState(() {
      // adding a new marker to map
      markers[markerId] = marker;
      setCarLocation(_currentPosition);
    });
  }

  _getCurrentLocation() async {
    Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) {
      setState(() {
        _currentPosition = position;
      });
    }).catchError((e) {
      print(e);
    });
  }

  void goToMyCar() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    double? lat = prefs.getDouble(_latitude);
    double? lng = prefs.getDouble(_longitude);

    String googleUrl =
        'https://www.google.com/maps/search/?api=1&query=$lat,$lng';
    String appleUrl = 'http://maps.apple.com/?ll=$lat,$lng';
    if (await canLaunch(googleUrl)) {
      print('launching com googleUrl $googleUrl');
      await launch(googleUrl);
    } else if (await canLaunch(appleUrl)) {
      print('launching apple url');
      await launch(appleUrl);
    } else {
      print('Cant Open Map');
    }
  }

  void removeMyCar() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() async {
      markers.clear();
      await preferences.clear();
    });
  }

  _getLocation() async {
    _getCurrentLocation();
    _currentPosition = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);

    var newPosition = CameraPosition(
        target: LatLng(_currentPosition.latitude, _currentPosition.longitude),
        zoom: 16);

    CameraUpdate update = CameraUpdate.newCameraPosition(newPosition);

    _controller.moveCamera(update);
    addMyCar();
  }

  @override
  void initState() {
    super.initState();
    viewCarLocation();
    Timer(Duration(seconds: 1), () {
      viewCarLocation();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomSheet: Container(
          color: Colors.white,
          height: 100,
          // alignment: Alignment.bottomCenter,
          width: MediaQuery.of(context).size.width,
          child: check == false
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SizedBox(
                        height: 40,
                        width: MediaQuery.of(context).size.width - 20,
                        child: RaisedButton(
                          color: appBarColor,
                          textColor: Colors.white,
                          child:
                              Text(lang == 1 ? 'Save My Parking' : "حفظ موقفي"),
                          onPressed: () {
                            setState(() {
                              // _getCurrentLocation();
                              _getLocation();
                              check = true;
                              // _getLocation();
                              // _set();
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SizedBox(
                        height: 40,
                        width: MediaQuery.of(context).size.width / 3,
                        child: RaisedButton(
                          color: appBarColor,
                          textColor: Colors.white,
                          child: Text(lang == 1 ? 'GoTo' : "اذهب إلى"),
                          onPressed: () {
                            setState(() {
                              goToMyCar();
                            });
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SizedBox(
                        height: 40,
                        width: MediaQuery.of(context).size.width / 3,
                        child: RaisedButton(
                          color: appBarColor,
                          textColor: Colors.white,
                          child: Text(lang == 1 ? 'Delete' : "حذف"),
                          onPressed: () {
                            setState(() {
                              removeMyCar();
                              check = false;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ), // My cards showing in front of the Map's
        ),
        appBar: AppBar(
          backgroundColor: appBarColor,
          foregroundColor: Colors.black,
          title: Text(lang == 1 ? 'PARKING' : "موقف سيارات"),
          elevation: 0.0,
        ),
        body: new Container(
          // height: 1000, // This line solved the issue
          child: Container(
            // child: Stack(children: []),
            child: GoogleMap(
              initialCameraPosition:
                  CameraPosition(target: _initialcameraposition),
              mapType: MapType.normal,
              onMapCreated: _onMapCreated,
              markers: Set<Marker>.of(markers.values),
              myLocationEnabled: true,
            ),

            // child: GoogleMap(
            //   initialCameraPosition: CameraPosition(target: _initialcameraposition),
            //   mapType: MapType.normal,
            //   onMapCreated: _onMapCreated,
            //   myLocationEnabled: true,
            //   buildingsEnabled: false,
            //   compassEnabled: false,
            //   indoorViewEnabled: false,
            //   liteModeEnabled: false,
            //   mapToolbarEnabled: false,
            //   myLocationButtonEnabled: false,
            //   // mapToolbarEnabled: false,
            // ),
          ),
        ),
      ),
    );
  }
}
