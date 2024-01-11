import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:flutter/material.dart';

class LiveChatScreen extends StatefulWidget {
  const LiveChatScreen({super.key});

  @override
  State<LiveChatScreen> createState() => _LiveChatScreenState();
}

class _LiveChatScreenState extends State<LiveChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: royalIntrigue,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                DoctorHuntAssetsPath.liveChatWallpaper
              ),
              fit: BoxFit.cover
            ),
          ),
          child: Column(
          children: [
            
          ]
          ),
        ),
      ),
    );
  }
}
