import 'package:environments_and_flavours/environment.dart';
import 'package:environments_and_flavours/main/main_common.dart';

Future<void> main(List<String> args) async {
  await mainCommon(Environment.dev);
}
