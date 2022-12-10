

import 'package:flutter/material.dart';
import 'package:fluttertutorial/styles.dart';

class PlantAppBar extends AppBar {

  @override
  final Widget title = Text("Plant Factory".toUpperCase(),
    style: PlantStyles.navBarStyle,
  );

  @override
  final Color backgroundColor = Colors.green;

  @override
  final bool centerTitle = true;

  @override
  final double elevation = 1.0;

  @override
  final IconThemeData iconTheme = IconThemeData(color: Colors.white);

}
