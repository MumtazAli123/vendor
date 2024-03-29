import 'dart:async';

import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;

  var latitude = "Getting Latitude..".obs; // "Geting Latitude...
  var longitude = "Getting Longitude..".obs; // "Getting Longitude...
  var address = "Getting Address..".obs; // "Getting Address...
  // late StreamSubscription<Position> streamSubscription;

  @override
  void onInit() {
    super.onInit();
    getLocation();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  void getLocation() async {
    bool serviceEnabled;

    // LocationPermission permission;

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
    //    });
    //
    //  }
    //
    // Future <void> getAddressFromLatLng(Position position) async {
    //    try {
    //      List<Placemark> placemarks = await placemarkFromCoordinates(position.latitude, position.longitude);
    //      Placemark place = placemarks[0];
    //      address.value = 'Address: ${place.locality}, ${place.postalCode}, ${place.country}';
    //    } catch (e) {
    //      address.value = "Error: " + e.toString();
    //    }
    // }
  }
}
