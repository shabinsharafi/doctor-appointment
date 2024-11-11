import 'package:doctor_app/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CustomClipper.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Transform.scale(
              scaleX: -1,
              child: Image.asset(
                "assets/video_call.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            right: 20,
            top: 70,
            child: Material(
              borderRadius: BorderRadius.circular(15),
              elevation: 50,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  "assets/video_call2.png",
                  fit: BoxFit.cover,
                  height: 180,
                  width: 120,
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 20,
              child: Container(
                height: MediaQuery.sizeOf(context).height,
                width: MediaQuery.sizeOf(context).width,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [
                      0,
                      0.7,
                      1
                    ],
                        colors: [
                      Colors.transparent,
                      Colors.transparent,
                      Colors.black87,
                    ])),
              )),
          ClipPath(
            clipper: CustomerClipper(),
            child: Container(
              color: Styles.color
                  .blueColor, /*
              child: Row(
                children: [
                  IconButton(
                      style: IconButton.styleFrom(backgroundColor: Colors.white24),
                      onPressed: () {},
                      icon: Icon(Icons.mic_none_outlined)),
                ],
              ),*/
            ),
          ),
          Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      style: IconButton.styleFrom(
                          backgroundColor: Colors.black26,
                          fixedSize: Size(60, 60)),
                      onPressed: () {},
                      icon: Icon(
                        Icons.sms_outlined,
                        color: Colors.white,
                      )),
                  IconButton(
                      style: IconButton.styleFrom(
                          backgroundColor: Colors.black26,
                          fixedSize: Size(60, 60)),
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.speaker_2,
                        color: Colors.white,
                      )),
                  SizedBox(
                    width: 90,
                  ),
                  IconButton(
                      style: IconButton.styleFrom(
                          backgroundColor: Colors.black26,
                          fixedSize: Size(60, 60)),
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.mic,
                        color: Colors.white,
                      )),
                  IconButton(
                      style: IconButton.styleFrom(
                          backgroundColor: Colors.black26,
                          fixedSize: Size(60, 60)),
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.video_camera,
                        size: 29,
                        color: Colors.white,
                      )),
                ],
              )),
          Positioned(
              bottom: 55,
              left: 0,
              right: 0,
              child: Center(
                  child: IconButton(
                      // radius: 40,
                      style: IconButton.styleFrom(
                          backgroundColor: Colors.red,
                          fixedSize: const Size(75, 75)),
                      // backgroundColor: Colors.red,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.call_end_rounded,
                        color: Colors.white,
                        size: 30,
                      )))),
        ],
      ),
    );
  }
}
