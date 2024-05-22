import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final double width;
  final double height;
  final String url;

  final BoxFit? fit;

  final double radius;

  final bool borerAll;

  const ImageWidget({
    super.key,
    required this.width,
    required this.height,
    required this.url,
    this.fit = BoxFit.none,
    this.radius = 8,
    this.borerAll = false,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borerAll
          ? BorderRadius.circular(radius)
          : BorderRadius.only(
              topLeft: Radius.circular(radius),
              topRight: Radius.circular(radius),
            ),
      child: url.contains('https') || url.contains('http')
          ? Image.network(
              url,
              width: width,
              height: height,
              fit: fit,
            )
          : Image.asset(''),
    );
  }
}
