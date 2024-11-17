import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/presentation/widgets/shared/video_buttons.dart';
import 'package:toktik/presentation/widgets/video/fullscreen_player.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videosPosts;

  const VideoScrollableView({super.key, required this.videosPosts});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: videosPosts.length,
      itemBuilder: (context, index) {
        final VideoPost videoPost = videosPosts[index];

        return Stack(
          children: [
            //video player
            SizedBox.expand(
              child: FullscreenPlayer(
                caption: videoPost.caption,
                videoUrl: videoPost.videoUrl,
              ),
            ),

            // FullScreenPlayer(video: videoPost),

            //botones
            Positioned(
              bottom: 40,
              right: 5,
              child: VideoButtons(video: videoPost),
            ),
          ],
        );
      },
    );
  }
}
