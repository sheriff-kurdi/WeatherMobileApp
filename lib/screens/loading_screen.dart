import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

    Future<Position> getLocation() async{

    Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    return position;
  }
  @override
  Widget build(BuildContext context) {

  
  print(getLocation());

    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            //Get the current location
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
