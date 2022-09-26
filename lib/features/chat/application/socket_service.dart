import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socket_io_client/socket_io_client.dart';

import '../../../common/sockets/socket_service.dart';

class ChatSocketService {
  final ProviderRef ref;

  ChatSocketService(this.ref);
  Socket get _socketClient => ref.read(socketClientProvider).socket!;

  final socketResponse = StreamController();

  void sendMessage() {
    _socketClient.emit('sendMessage', {});
  }

  void getSocketId() {
    _socketClient.emit('getSocketId', {});
  }

  void receiveSocketId() {
    _socketClient.on('receiveSocketId', (data) {});
  }

  void updateConversationId() {
    _socketClient.on('updateConversationId', (data) {});
  }

  void receiveMessage() {
    _socketClient.on('receiveMessage', (data) {});
  }
}
