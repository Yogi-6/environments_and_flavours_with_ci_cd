import 'package:environments_and_flavours/environment.dart';
import 'package:environments_and_flavours/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../config_reader.dart';

Future<void> mainCommon(String env) async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigReader.initialize();

  Color? primaryColor;

  switch (env) {
    case Environment.dev:
      primaryColor = Colors.blue;
      break;
    case Environment.prod:
      primaryColor = Colors.red;
      break;
    default:
  }

  runApp(ProviderScope(
    overrides: [colorsProvider.overrideWithValue(primaryColor!)],
    child: MyApp(),
  ));
}

final colorsProvider = Provider<Color>((ref) => Colors.red);
