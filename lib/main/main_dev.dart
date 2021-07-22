import 'package:environments_and_flavours/config_reader.dart';
import 'package:environments_and_flavours/environment.dart';
import 'package:environments_and_flavours/main/main_common.dart';
import 'package:flutter/material.dart';

Future<void> main(List<String> args) async {
  await mainCommon(Environment.dev);
}
