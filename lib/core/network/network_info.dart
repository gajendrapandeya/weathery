import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';

abstract class NetworkInfo {
  Future<bool> isConnected();
}

@Injectable(as: NetworkInfo)
class NetworkInfoImpl implements NetworkInfo {
  final Connectivity connectionChecker = Connectivity();

  @override
  Future<bool> isConnected() async =>
      (await connectionChecker.checkConnectivity()) != ConnectivityResult.none;
}
