import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slinkshot_app/components/buttons.dart';
import 'package:slinkshot_app/size_config.dart';
import 'package:slinkshot_app/utils/colours.dart';
import 'package:video_player/video_player.dart';

class VidCard extends StatefulWidget {
  const VidCard({Key? key}) : super(key: key);

  @override
  _VidCardState createState() => _VidCardState();
}

class _VidCardState extends State<VidCard> {
  VideoPlayerController? _controller;
  Future<void>? _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.asset('assets/videos/vid1.mp4');
    _initializeVideoPlayerFuture = _controller!.initialize();
    _controller!.setLooping(true);

    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: UnicornOutlineButton(
        height: getScreenHeight(550),
        strokeWidth: 3,
        radius: 34,
        gradient: LinearGradient(
          colors: [CPEACH, CPURPLE],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        child: Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/skin2.png",
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(width: getScreenWidth(21)),
                    Text(
                      "yenyenyen test",
                      style: GoogleFonts.roboto(
                        color: CWHITE,
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.add_circle, color: CPEACH, size: 24)
                  ],
                ),
              ),
              SizedBox(
                height: getScreenHeight(40),
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                    child: FutureBuilder(
                      future: _initializeVideoPlayerFuture,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return AspectRatio(
                            aspectRatio: _controller!.value.aspectRatio,
                            child: VideoPlayer(_controller!),
                          );
                        } else {
                          return Center(child: CircularProgressIndicator());
                        }
                      },
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (_controller!.value.isPlaying) {
                          _controller!.pause();
                        } else {
                          _controller!.play();
                        }
                      });
                    },
                    child: Container(
                      height: getScreenHeight(50),
                      width: getScreenWidth(50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50), color: CASH),
                      child: Icon(
                        _controller!.value.isPlaying
                            ? Icons.pause
                            : Icons.play_arrow,
                        color: CWHITE,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: getScreenHeight(35),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Apex",
                      style: GoogleFonts.roboto(
                        color: CWHITE,
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.translate,
                      color: CWHITE,
                      size: 19,
                    ),
                    SizedBox(width: getScreenWidth(7)),
                    Icon(
                      Icons.fullscreen_exit,
                      color: CWHITE,
                      size: 19,
                    ),
                    SizedBox(width: getScreenWidth(7)),
                    Icon(
                      Icons.report_problem,
                      color: CWHITE,
                      size: 19,
                    ),
                    SizedBox(width: getScreenWidth(7)),
                    Icon(
                      Icons.share,
                      color: CWHITE,
                      size: 19,
                    ),
                  ],
                ),
              ),
              Container(
                height: getScreenHeight(130),
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: CASH.withOpacity(0.4)),
                    borderRadius: BorderRadius.circular(34),
                    color: Colors.transparent),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                    right: 21,
                    left: 21,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          "37 Seconds of greatness! I lost though but this was a very sick shot. Snipped him right from behind!!!!",
                          style: GoogleFonts.roboto(
                            color: CWHITE,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            height: 1.7,
                          ),
                        ),
                      ),
                      SizedBox(width: getScreenWidth(33)),
                      Column(
                        children: [
                          Icon(
                            Icons.remove_red_eye,
                            color: CWHITE,
                            size: 13,
                          ),
                          Text(
                            "67",
                            style: GoogleFonts.roboto(
                              color: CWHITE,
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(height: getScreenHeight(7)),
                          Icon(
                            Icons.favorite,
                            color: CWHITE,
                            size: 13,
                          ),
                          Text(
                            "890",
                            style: GoogleFonts.roboto(
                              color: CWHITE,
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(height: getScreenHeight(7)),
                          Icon(
                            Icons.comment,
                            color: CWHITE,
                            size: 13,
                          ),
                          Text(
                            "10",
                            style: GoogleFonts.roboto(
                              color: CWHITE,
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
