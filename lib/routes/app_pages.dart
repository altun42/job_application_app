import 'package:get/get.dart';

import '../modules/login/login_binding.dart';
import '../modules/login/login_page.dart';
import '../modules/register/register_binding.dart';
import '../modules/register/register_page.dart';
part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.LOGIN;
  static final routes = [
    GetPage(
        name: Routes.LOGIN, page: () => LoginPage(), binding: LoginBinding()),
    GetPage(
        name: Routes.REGISTER,
        page: () => RegisterPage(),
        binding: RegisterBinding())
  ];
}
