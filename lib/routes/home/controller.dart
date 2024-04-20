import 'package:get_it/get_it.dart';
import 'package:sisyphus_app/services/appsync.dart';

class HomeController {
  Future<HomeController> initialize() async {
    return this;
  }

  Future<void> getViewer() async {
    await GetIt.I<AppSyncService>().queryViewer();
  }
}
