import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:weathery/core/domain/entities/current_location.dart';
import 'package:weathery/core/presentation/cubit/current_location/current_location_cubit.dart';
import 'package:weathery/core/theme/gap.dart';
import 'package:weathery/core/theme/typography.dart';
import 'package:weathery/core/utils/date_time_utils.dart';
import 'package:weathery/features/home/presentation/widgets/app_bar_loading_widget.dart';

class HomeScreenAppBar extends StatelessWidget with PreferredSizeWidget {
  const HomeScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
        ),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            MdiIcons.mapMarker,
          ),
        ),
      ),
      title: BlocBuilder<CurrentLocationCubit, CurrentLocationState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            loading: () => const AppBarLoadingWidget(),
            loaded: (location) => _buildDataLoaded(location),
            error: (message) => Text(message),
          );
        },
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(
            right: 16.0,
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.search,
              size: 28.0,
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);

  Widget _buildDataLoaded(CurrentLocation location) {
    return Column(
      children: [
        Text(
          location.locationName,
          style: AppTypography.headline5,
        ),
        VerticalGap.xs,
        Text(
          DateTimeUtils.getFormattedDate(DateTime.now()),
          style: AppTypography.subTitle.copyWith(
            color: Colors.white.withOpacity(0.7),
          ),
        )
      ],
    );
  }
}
