// ignore_for_file: unused_import

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:weathery/features/home/presentation/screens/home_screen.dart';
import 'package:weathery/features/search/presentation/screens/search_screen.dart';

part 'app_router.gr.dart';

@CustomAutoRouter(
  transitionsBuilder: TransitionsBuilders.slideRightWithFade,
  durationInMilliseconds: 200,
  routes: <AutoRoute>[
    AutoRoute(page: HomeScreen, initial: true),
    AutoRoute(page: SearchScreen),
  ],
)
class AppRouter extends _$AppRouter {}
