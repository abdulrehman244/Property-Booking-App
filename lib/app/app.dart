import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_app/ui/detail/product_view.dart';
import 'package:stacked_app/ui/home/home_view.dart';
import 'package:stacked_app/ui/login/login_view.dart';
import 'package:stacked_app/ui/signup/signup_view.dart';

@StackedApp(routes: [
  MaterialRoute(page: LoginView,initial: true),
  MaterialRoute(page: SignupView),
  MaterialRoute(page: HomeView),
  MaterialRoute(page: ProductView),


],dependencies: [])


class App{}