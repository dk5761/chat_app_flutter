// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:socket_io_client/socket_io_client.dart';

import '../../features/onBoarding/presentation/controllers/auth_controller.dart';

final socketClientProvider = Provider((ref) => SocketClient(ref));

class SocketClient {
  late final IO.Socket? socket;

  final Ref ref;

  SocketClient(
    this.ref,
  ) {
    socket = IO.io(
        'http://${dotenv.env['IP']}',
        OptionBuilder()
            .setTransports(['websocket'])
            .disableAutoConnect()
            .setExtraHeaders(
                {'token': "${ref.watch(authProvider).user?.authToken}"})
            .build());
    socket!.connect();
  }
}
