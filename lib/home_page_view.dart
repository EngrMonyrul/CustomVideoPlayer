import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  late VideoPlayerController videoPlayerController;
  late CustomVideoPlayerController customVideoPlayerController;

  setVideoPlayerControllers() {
    videoPlayerController = VideoPlayerController.networkUrl(Uri.parse(
        'http://index2.circleftp.net/FILE/English%20%26%20Foreign%20Dubbed%20Movies/2023/The%20Little%20Mermaid%20%282023%29%201080p%20WEB-DL%20%5BDual%20Audio%5D%20%5BEnglish%2BHindi%5D%20H264/The%20Little%20Mermaid%20%282023%29%201080p%20WEB-DL%20%5BDual%20Audio%5D%20%5BEnglish%2BHindi%5D%20H264.mkv'))
      ..initialize().then((value) {
        setState(() {});
      });

    videoPlayerController.play();
    videoPlayerController.initialize();

    customVideoPlayerController = CustomVideoPlayerController(context: context, videoPlayerController: videoPlayerController);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setVideoPlayerControllers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomVideoPlayer(
        customVideoPlayerController: customVideoPlayerController,
      ),
    );
  }
}
