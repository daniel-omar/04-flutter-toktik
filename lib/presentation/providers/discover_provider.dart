import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infraestructure/models/local_video_model.dart';
import 'package:toktik/shared/data/local_video_posts.dart';

class DiscoverProvider extends ChangeNotifier {
  //TODO: Repository, Datasource

  bool initialLoading = true;
  List<VideoPost> videosPosts = [];

  Future<void> loadNextPage() async {
    await Future.delayed(const Duration(seconds: 3));

    // ignore: unused_local_variable
    final List<VideoPost> newVideoPosts = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();

    videosPosts.addAll(newVideoPosts);
    initialLoading = false;

    notifyListeners();
  }
}
