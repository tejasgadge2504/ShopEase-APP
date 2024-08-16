import 'package:flutter/material.dart';
import 'package:shopease/screens/bottomBar.dart';
import 'package:video_player/video_player.dart';
import 'dart:async'; // Import this for Future.delayed

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('asstes/images/WristListAppLogoVideo.mp4')
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
        _controller.setLooping(true);
      });

    // Delay navigation for 3 seconds
    Timer(Duration(seconds: 15), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => appBottom(), // Replace HomePage with your next screen
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Background color if video does not fill the screen
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
          aspectRatio: _controller.value.aspectRatio,
          child: VideoPlayer(_controller),
        )
            : CircularProgressIndicator(), // Show a loading spinner while the video is loading
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
