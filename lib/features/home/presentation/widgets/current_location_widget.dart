import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:weathery/core/constants/app_constants.dart';
import 'package:weathery/core/utils/app_utils.dart';
import 'package:weathery/di/di_setup.dart';
import 'package:weathery/features/home/presentation/blocs/cubits/current_condition_cubit.dart';

class CurrentLocationWidget extends StatelessWidget {
  const CurrentLocationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final currentConditionCubit = getIt<CurrentConditionCubit>();
    return FutureBuilder(
      future: AppUtils.getLocationKey(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.hasError) {
          return Center(
            child: Text(snapshot.error.toString()),
          );
        }

        if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return BlocProvider(
          create: (context) => currentConditionCubit
            ..requestCurrentCondition(
                apiKey: dotenv.env[AppConstants.apiKey]!,
                locationKey: snapshot.data),
          child: BlocBuilder<CurrentConditionCubit, CurrentConditionState>(
            builder: (context, state) {
              return Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  vertical: 16.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: const LinearGradient(
                    colors: [Color(0xfff55145), Color(0xff2095f3)],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(
                          Icons.cloud,
                          color: Colors.white,
                          size: 96,
                        ),
                        Text(
                          '17°',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 72,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text(
                          'Partly Cloudly',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                          ),
                        ),
                        Text(
                          'H: 19°  L: 15°',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildInfo('Uv Index', 'Low'),
                        _buildInfo('Wind', '13km/h'),
                        _buildInfo('Humidity', '76%'),
                      ],
                    ),
                    const SizedBox(
                      height: 16.0,
                    )
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }

  Widget _buildInfo(String title, String value) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 12.0,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 12.0,
          ),
        )
      ],
    );
  }
}
