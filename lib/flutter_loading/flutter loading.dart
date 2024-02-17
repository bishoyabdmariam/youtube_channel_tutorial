import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class FlutterLoading extends StatefulWidget {
  const FlutterLoading({super.key});

  @override
  State<FlutterLoading> createState() => _FlutterLoadingState();
}

class _FlutterLoadingState extends State<FlutterLoading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          " Flutter Loading ",
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 18.0,),
        child: SingleChildScrollView(
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircularProgressIndicator(color: Colors.black),
              SizedBox(width: 30, height: 30),
              SpinKitPouringHourGlassRefined(
                color: Colors.black,
              ),
              SizedBox(width: 30, height: 30),
              SpinKitPouringHourGlass(
                color: Colors.black,
              ),
              SizedBox(width: 30, height: 30),
              SpinKitDancingSquare(
                color: Colors.black,
              ),
              SizedBox(width: 30, height: 30),
              SpinKitChasingDots(
                color: Colors.black,
              ),
              SizedBox(width: 30, height: 30),
              SpinKitRing(
                color: Colors.black,
              ),
              SizedBox(width: 30, height: 30),
              SpinKitCircle(
                color: Colors.black,
              ),
              SizedBox(width: 30, height: 30),
              SpinKitCubeGrid(
                color: Colors.black,
              ),
              SizedBox(width: 30, height: 30),
              SpinKitDoubleBounce(
                color: Colors.black,
              ),
              SizedBox(width: 30, height: 30),
              SpinKitDualRing(
                color: Colors.black,
              ),
              SizedBox(width: 30, height: 30),
              SpinKitFadingCircle(
                color: Colors.black,
              ),
              SizedBox(width: 30, height: 30),
              SpinKitFadingCube(
                color: Colors.black,
              ),
              SizedBox(width: 30, height: 30),
              SpinKitFadingFour(
                color: Colors.black,
              ),
              SizedBox(width: 30, height: 30),
              SpinKitHourGlass(
                color: Colors.black,
              ),
              SizedBox(width: 30, height: 30),
              SpinKitPulse(
                color: Colors.black,
              ),
              SizedBox(width: 30, height: 30),
              SpinKitPianoWave(
                color: Colors.black,
              ),
              SizedBox(width: 30, height: 30),
              SpinKitRipple(
                color: Colors.black,
              ),
              SizedBox(width: 30, height: 30),
              SpinKitSpinningLines(
                color: Colors.black,
              ),
              SizedBox(width: 30, height: 30),
              SpinKitWave(
                color: Colors.black,
              ),
              SizedBox(width: 30, height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
