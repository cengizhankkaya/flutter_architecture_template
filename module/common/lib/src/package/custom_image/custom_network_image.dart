import 'package:cached_network_image/cached_network_image.dart';
import 'package:common/comman.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// It will be used to display images from the network.
class CustomNetworkImage extends StatelessWidget {
  /// Creates a [CustomNetworkImage] widget.
  const CustomNetworkImage({
    super.key,
    this.imageUrl,
    this.emptyWidget,
    this.memCache = const CustomMemCache(height: 200, width: 200),
    this.boxFit = BoxFit.cover,
    this.loadingWidget,
    this.size,
  });

  /// The URL of the image to be displayed.
  final String? imageUrl;

  /// The widget to be displayed when the image URL is empty or null.
  /// If not provided, it defaults to an empty [SizedBox].
  final Widget? emptyWidget;

  /// When image is not available then it will show empty widget.
  final Widget? loadingWidget;

  /// Default value is [CustomMemCache(height: 200, width: 200)].
  final CustomMemCache memCache;

  /// The box fit for the image.
  final BoxFit? boxFit;

  /// The size of the image, if specified.
  final Size? size;

  /// Returns a widget that displays the image from the network.
  @override
  Widget build(BuildContext context) {
    final url = imageUrl;
    if (url == null || url.isEmpty) {
      return emptyWidget ?? const SizedBox.shrink();
    }
    return CachedNetworkImage(
      imageUrl: url,
      memCacheHeight: memCache.height,
      memCacheWidth: memCache.width,
      fit: boxFit,
      width: size?.width,
      height: size?.height,
      errorListener: (value) {
        if (kDebugMode) {
          print('Error loading image: $value');
        }
      },
      progressIndicatorBuilder: (context, url, progress) {
        return loadingWidget ??
            const Center(child: CircularProgressIndicator());
      },
      errorWidget: (context, url, error) {
        return emptyWidget ?? const SizedBox.shrink();
      },
    );
  }
}
