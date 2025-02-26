import 'package:flutter_modular/flutter_modular.dart';
import 'package:mergato_livre/app/modules/auth/auth_module.dart';
import 'package:mergato_livre/app/modules/home/home_module.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.module('', module: AuthModule());
    r.module('', module: HomeModule());
  }
}
