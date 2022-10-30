import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weathery/core/constants/app_constants.dart';
import 'package:weathery/core/presentation/cubit/current_location/current_location_cubit.dart';
import 'package:weathery/core/theme/gap.dart';
import 'package:weathery/core/utils/location_utils.dart';
import 'package:weathery/di/di_setup.dart';
import 'package:weathery/features/home/presentation/widgets/current_location_widget.dart';
import 'package:weathery/features/home/presentation/widgets/home_screen_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<Position> _getCurrentPosition() async {
    final hasPermission = await LocationUtils.handleLocationPermission(
      handleLocationError: (String error) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(error)),
        );
      },
    );
    if (!hasPermission) return Future.error('Location permission denied');
    return LocationUtils.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    final currentLocationCubit = getIt<CurrentLocationCubit>();

    final apiKey = dotenv.env[AppConstants.apiKey]!;
    return BlocProvider(
      create: (context) => currentLocationCubit,
      child: FutureBuilder(
        future: _getCurrentPosition(),
        builder: (BuildContext context, AsyncSnapshot<Position> snapshot) {
          if (snapshot.hasError) {
            return Scaffold(
              appBar: const HomeScreenAppBar(),
              body: Center(
                child: Text(snapshot.error.toString()),
              ),
            );
          }

          if (!snapshot.hasData) {
            return const Scaffold(
              appBar: HomeScreenAppBar(),
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }

          final latLong =
              '${snapshot.data!.latitude},${snapshot.data!.longitude}';
          currentLocationCubit.requestCurrentLocation(
              apiKey: apiKey, latLong: latLong);
          return Scaffold(
            appBar: const HomeScreenAppBar(),
            body: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: const [
                  VerticalGap.m,
                  CurrentLocationWidget(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
