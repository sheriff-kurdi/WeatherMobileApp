import 'package:geolocator/geolocator.dart';


class Location {
  double lalilude;
  double longitude;
  Future<Position> getLocation() async{

    Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    return position;
  }
}


