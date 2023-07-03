import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';

class CachedNetworkImagePage extends StatefulWidget {
  const CachedNetworkImagePage({super.key});

  @override
  State<CachedNetworkImagePage> createState() => _CachedNetworkImagePageState();
}

class _CachedNetworkImagePageState extends State<CachedNetworkImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cached Network Image'),
        actions: [
          TextButton(
              onPressed: () {
                clearCache();
              },
              child: const Text(
                'Clear Cache',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
      body: Center(
        child: CachedNetworkImage(
          key: UniqueKey(),
          imageUrl:
              'https://images.unsplash.com/photo-1554080353-a576cf803bda?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cGhvdG98ZW58MHx8MHx8fDA%3D&w=1000&q=80',
          imageBuilder: (context, imageProvider) => CircleAvatar(
            backgroundImage: imageProvider,
            radius: 120,
          ),
          errorWidget: (context, url, error) => Icon(Icons.error_outline),
          //placeholder: (context,url) => CircularProgressIndicator(),
          progressIndicatorBuilder: (context, url, progress) =>
              CircularProgressIndicator(
            value: progress.progress,
          ),
        ),
      ),
    );
  }

  void clearCache() {
    imageCache.clear();
    imageCache.clearLiveImages();
    setState(() {});
  }
}
