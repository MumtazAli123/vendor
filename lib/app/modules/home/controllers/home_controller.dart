import 'dart:async';

import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';
import 'package:location/location.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;


  var location  = "Location..".obs; // "Getting Location...

  var latitude = " Latitude..".obs; // "Getting Latitude...
  var longitude = " Longitude..".obs; // "Getting Longitude...
  var address = " Address..".obs; // "Getting Address...
  var cityName = "City Name..".obs; // "Getting City Name...
  late StreamSubscription streamSubscription;


  @override
  void onInit() {
    super.onInit();
    getLocation();
  }

  @override
  void onReady() {
    // super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    streamSubscription.cancel();
  }

  void increment() => count.value++;

  void getLocation() async {
    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;

    await Future.delayed(Duration(seconds: 2));




  }



    //    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    //    if (!serviceEnabled) {
    //      await Geolocator.openLocationSettings();
    //      return Future.error('Location services are disabled.');
    //    }
    //    permission = await Geolocator.checkPermission();
    //    if (permission == LocationPermission.deniedForever) {
    //      await Geolocator.openAppSettings();
    //      return Future.error(
    //          'Location permissions are permanently denied, we cannot request permissions.');
    //    }
    //    if (permission == LocationPermission.denied) {
    //      permission = await Geolocator.requestPermission();
    //      if (permission != LocationPermission.whileInUse &&
    //          permission != LocationPermission.always) {
    //        return Future.error(
    //            'Location permissions are denied (actual value: $permission).');
    //      }
    //    }
    //    streamSubscription = Geolocator.getPositionStream().listen((Position position) {
    //      latitude.value = 'Latitude: ${position.latitude}';
    //      longitude.value = 'Longitude: ${position.longitude}';
    //      getAddressFromLatLng(position);
    //       city(position);
    //    });
    //
    //  }
    //
    // Future <void> getAddressFromLatLng(Position position) async {
    //    try {
    //      // karachi
    //       List<Placemark> placemarks = await placemarkFromCoordinates(24.8607, 67.0011);
    //       Placemark place = placemarks[0];
    //       address.value = 'Address: ${place.street}, ${place.locality}, ${place.administrativeArea}';
    //      } catch (e) {
    //      address.value = "Error: $e";
    //    }
    // }
    // Future <void> city(Position position) async {
    //     try {
    //       // karachi
    //       List<Placemark> placemarks = await placemarkFromCoordinates(24.8607, 67.0011);
    //       Placemark place = placemarks[0];
    //       cityName.value = 'City: ${place.locality}';
    //     } catch (e) {
    //       cityName.value = "Error: $e";
    //     }
    //
    // }
}
