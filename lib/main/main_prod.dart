import '../environment.dart';
import 'main_common.dart';

Future<void> main(List<String> args) async {
  await mainCommon(Environment.prod);
}
