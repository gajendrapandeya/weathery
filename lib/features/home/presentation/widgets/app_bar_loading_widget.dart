import 'package:flutter/material.dart';
import 'package:weathery/core/presentation/widgets/loader.dart';
import 'package:weathery/core/theme/gap.dart';

class AppBarLoadingWidget extends StatelessWidget {
  const AppBarLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShimmerLoader(
      child: Column(
        children: const [
          Skeleton(
            height: 20.0,
          ),
          VerticalGap.s,
          Skeleton(
            height: 16.0,
          ),
        ],
      ),
    );
  }
}
