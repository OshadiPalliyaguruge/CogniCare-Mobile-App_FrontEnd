import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../screens/learn.dart';


class LearnSignPage extends StatefulWidget {
  final String videoUrl;
  const LearnSignPage({Key? key, required this.videoUrl}) : super(key: key);

  @override
  State<LearnSignPage> createState() => _LearnSignPageState();
}

class _LearnSignPageState extends State<LearnSignPage> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    //const url = 'https://youtu.be/6jvFrJ3GBU8?si=sHDx9U2pbAoibNIb';

    controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.videoUrl)!,
      flags: const YoutubePlayerFlags(
        mute: false,
        loop: false,
        autoPlay: true,
        hideControls: false,
      ),
    )
      ..addListener(() {
        if (mounted) {
          setState(() {});
        }
      });
  }

  @override
  void deactivate() {
    controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) =>
      YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: controller,
        ),
        builder: (context, player) =>
            Scaffold(
              appBar: AppBar(
                //title: Text('Learn Page'),
                automaticallyImplyLeading: false,
                //--------- remove default back arrow-----------------
                backgroundColor: Color(0xFF030404),
                //------------------- set the app bar height -----------------------
                toolbarHeight: MediaQuery
                    .of(context)
                    .size
                    .height * 0.1,

                //--------------------------- back arrow to previous page ---------------------------
                leading: GestureDetector(
                  onTap: () {
                    controller.pause();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LearnPage(),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: MediaQuery
                        .of(context)
                        .size
                        .height * 0.02, left: MediaQuery
                        .of(context)
                        .size
                        .width * 0.025),
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.2,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.2,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFF030404),
                          Color(0xFF2F3944), // Transparent color
                        ],
                      ),
                      border: Border.all(
                        width: 2.0,
                        style: BorderStyle.solid,
                        color: Color.fromARGB(243, 116, 45, 0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x120E0E59),
                          offset: Offset(4, 4),
                          blurRadius: 4,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: MediaQuery
                            .of(context)
                            .size
                            .height * 0.03,
                      ),
                    ),
                  ),
                ),
              ),

              body: Center(
                  child: Stack(
                      children: [

                        Container(
                            height: MediaQuery
                                .of(context)
                                .size
                                .height,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,

                            //------------------------------------------ set background color -----------------------
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xFF030404),
                                    Color(0xFF2F3944),
                                  ]
                              ),
                            )
                        ),

                        SingleChildScrollView(
                          child: Column(
                            children: [
                              player,
                              // Text(controller.metadata.title ?? ''),
                              // Text(controller.metadata.author ?? ''),
                              // Text(controller.metadata.duration.toString() ?? ''),

                              SizedBox(height: 16),
                              ElevatedButton(
                                // child:const Text('Next Video'),
                                // onPressed:(){
                                //   const url='https://youtu.be/umODKchMtfk?si=3MBo8MuXnhAm3mza';
                                //   controller.load(YoutubePlayer.convertUrlToId(url)!);
                                // }
                                child: Text(
                                  controller.value.isPlaying ? 'Pause' : 'Play',),
                                onPressed: () {
                                  controller.mute();
                                  controller.unMute();
                                  controller.seekTo(
                                      const Duration(seconds: 10));
                                  if (controller.value.isPlaying) {
                                    controller.pause();
                                  }
                                  else {
                                    controller.play();
                                  }
                                },
                              )
                            ],
                          ),
                        ),
                      ]
                  )
              ),
            ),
      );
}

