import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/main.dart';
import 'package:toktik/presentation/providers/discover_provider.dart';
import 'package:toktik/presentation/widgets/shared/video_scrollable_view.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final discoverProvider = context.watch<DiscoverProvider>();

    // final otroDiscoverProvider =
    //     Provider.of<DiscoverProvider>(context, listen: true);

    // TODO: implement build
    return Scaffold(
      body: discoverProvider.initialLoading
          ? const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            )
          : VideoScrollableView(videosPosts: discoverProvider.videosPosts),
    );
  }
}
