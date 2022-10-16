import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

AppBar homeScreenAppbar() {
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
    title: Column(
      children: [
        const Text(
          'Sydney, Australia',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        const SizedBox(
          height: 4.0,
        ),
        Text(
          'Sunday, 3rd September',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 10.0,
            color: Colors.grey.shade300,
          ),
        )
      ],
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
