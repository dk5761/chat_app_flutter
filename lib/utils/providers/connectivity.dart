import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Stream<ConnectivityResult> getConnectivity() {
  return Connectivity().onConnectivityChanged;
}

final connectivityProvider =
    StreamProvider<ConnectivityResult>((ref) => getConnectivity());
