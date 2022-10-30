import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Skeleton extends StatelessWidget {
  final double height;
  final double width;
  final double? radius;
  const Skeleton({
    Key? key,
    required this.height,
    this.width = double.infinity,
  })  : radius = null,
        super(key: key);

  const Skeleton.circular({
    Key? key,
    required this.height,
    this.width = double.infinity,
    this.radius = 8.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.7),
        borderRadius: BorderRadius.circular(radius ?? 0),
      ),
    );
  }
}

class ShimmerLoader extends StatelessWidget {
  final Widget child;
  const ShimmerLoader({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: child,
    );
  }
}
