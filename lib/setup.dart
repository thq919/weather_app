import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'config.dart';
import 'setup.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void configureDependencies() {
  final env = mockMode;

  $initGetIt(getIt, environment: env);
}
