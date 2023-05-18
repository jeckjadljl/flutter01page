import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoController extends StatefulWidget {
  final VideoPlayerController? controller;
  VideoController(this.controller, {super.key});

  @override
  State<VideoController> createState() => _VideoControllerState();
}

 class _VideoControllerState extends State<VideoController> {
   VideoPlayerController? get controller => widget.controller;
   bool initialized = false;

  void _videoControllerUpdate() {
   if (mounted) {
     if (initialized != controller!.value.isInitialized) {
      initialized = controller!.value.isInitialized;
        setState(() {});
      }
   }
 }

  @override
   void initState() {
    controller!.addListener(_videoControllerUpdate);
    super.initState();
  }
  @override
  void dispose() {
    controller!.removeListener(_videoControllerUpdate);
 super.dispose();
   }

   @override
  Widget build(BuildContext context) {
   if (initialized) {
      return Container(
      child: AspectRatio(
        aspectRatio: controller!.value.aspectRatio,
        child: VideoPlayer(controller!),
       ),
     );
  }
   return Container();
 }
}
