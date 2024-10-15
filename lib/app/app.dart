import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:shopping_app/views/home_view.dart';
import 'package:shopping_app/views/product_view.dart';


@StackedApp(
  routes: [
    MaterialRoute(page: HomeView, initial: true),
    MaterialRoute(page: ProductView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
  ],
)
class AppSetup {
}
