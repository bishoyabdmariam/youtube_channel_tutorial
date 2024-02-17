import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class FlutterLoading extends StatefulWidget {
  const FlutterLoading({Key? key}) : super(key: key);

  @override
  State<FlutterLoading> createState() => _FlutterLoadingState();
}

class _FlutterLoadingState extends State<FlutterLoading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: const Text(
          " Flutter Loading ",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildLoadingSpinner(
                'CircularProgressIndicator',
                const CircularProgressIndicator(
                  color: Colors.black,
                ),
              ),
              _buildLoadingSpinner(
                'SpinKitPouringHourGlassRefined',
                const SpinKitPouringHourGlassRefined(
                  color: Colors.black,
                ),
              ),
              _buildLoadingSpinner(
                'SpinKitPouringHourGlass',
                const SpinKitPouringHourGlass(
                  color: Colors.black,
                ),
              ),
              _buildLoadingSpinner(
                'SpinKitDancingSquare',
                const SpinKitDancingSquare(
                  color: Colors.black,
                ),
              ),
              _buildLoadingSpinner(
                'SpinKitChasingDots',
                const SpinKitChasingDots(
                  color: Colors.black,
                ),
              ),
              _buildLoadingSpinner(
                'SpinKitRing',
                const SpinKitRing(
                  color: Colors.black,
                ),
              ),
              _buildLoadingSpinner(
                'SpinKitCircle',
                const SpinKitCircle(
                  color: Colors.black,
                ),
              ),
              _buildLoadingSpinner(
                'SpinKitCubeGrid',
                const SpinKitCubeGrid(
                  color: Colors.black,
                ),
              ),
              _buildLoadingSpinner(
                'SpinKitDoubleBounce',
                const SpinKitDoubleBounce(
                  color: Colors.black,
                ),
              ),
              _buildLoadingSpinner(
                'SpinKitDualRing',
                const SpinKitDualRing(
                  color: Colors.black,
                ),
              ),
              _buildLoadingSpinner(
                'SpinKitFadingCircle',
                const SpinKitFadingCircle(
                  color: Colors.black,
                ),
              ),
              _buildLoadingSpinner(
                'SpinKitFadingCube',
                const SpinKitFadingCube(
                  color: Colors.black,
                ),
              ),
              _buildLoadingSpinner(
                'SpinKitFadingFour',
                const SpinKitFadingFour(
                  color: Colors.black,
                ),
              ),
              _buildLoadingSpinner(
                'SpinKitHourGlass',
                const SpinKitHourGlass(
                  color: Colors.black,
                ),
              ),
              _buildLoadingSpinner(
                'SpinKitPulse',
                const SpinKitPulse(
                  color: Colors.black,
                ),
              ),
              _buildLoadingSpinner(
                'SpinKitPianoWave',
                const SpinKitPianoWave(
                  color: Colors.black,
                ),
              ),
              _buildLoadingSpinner(
                'SpinKitRipple',
                const SpinKitRipple(
                  color: Colors.black,
                ),
              ),
              _buildLoadingSpinner(
                'SpinKitSpinningLines',
                const SpinKitSpinningLines(
                  color: Colors.black,
                ),
              ),
              _buildLoadingSpinner(
                'SpinKitWave',
                const SpinKitWave(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLoadingSpinner(String name, Widget spinner) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(name),
        const SizedBox(width: 50),
        spinner,
        const SizedBox(height: 100),
      ],
    );
  }
}
