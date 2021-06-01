// The file contains all method messages for AMQP class Queue (id: 50)
//
// File was auto-generated by generate_bindings.dart at 2019-03-21 11:46:08.132436
//
// Do not modify

// ignore_for_file: empty_constructor_bodies

part of dart_amqp.protocol;

class QueueDeclare implements Message {
  final bool msgHasContent = false;
  final int msgClassId = 50;
  final int msgMethodId = 10;

  // Message arguments
  late int reserved_1;
  String? queue;
  bool? passive;
  bool? durable;
  bool? exclusive;
  bool? autoDelete;
  bool? noWait;
  Map<String, Object>? arguments;

  QueueDeclare();

  void serialize(TypeEncoder encoder) {
    encoder
      ..writeUInt16(msgClassId)
      ..writeUInt16(msgMethodId)
      ..writeUInt16(reserved_1)
      ..writeShortString(queue)
      ..writeBits([passive, durable, exclusive, autoDelete, noWait])
      ..writeFieldTable(arguments);
  }
}

class QueueDeclareOk implements Message {
  final bool msgHasContent = false;
  final int msgClassId = 50;
  final int msgMethodId = 11;

  // Message arguments
  String? queue;
  int? messageCount;
  int? consumerCount;

  QueueDeclareOk.fromStream(TypeDecoder decoder) {
    queue = decoder.readShortString();
    messageCount = decoder.readUInt32();
    consumerCount = decoder.readUInt32();
  }

  void serialize(TypeEncoder encoder) {}
}

class QueueBind implements Message {
  final bool msgHasContent = false;
  final int msgClassId = 50;
  final int msgMethodId = 20;

  // Message arguments
  late int reserved_1;
  String? queue;
  String? exchange;
  String? routingKey;
  bool? noWait;
  Map<String, Object>? arguments;

  QueueBind();

  void serialize(TypeEncoder encoder) {
    encoder
      ..writeUInt16(msgClassId)
      ..writeUInt16(msgMethodId)
      ..writeUInt16(reserved_1)
      ..writeShortString(queue)
      ..writeShortString(exchange)
      ..writeShortString(routingKey)
      ..writeBits([noWait])
      ..writeFieldTable(arguments);
  }
}

class QueueBindOk implements Message {
  final bool msgHasContent = false;
  final int msgClassId = 50;
  final int msgMethodId = 21;

  // Message arguments

  QueueBindOk.fromStream(TypeDecoder decoder) {}

  void serialize(TypeEncoder encoder) {}
}

class QueueUnbind implements Message {
  final bool msgHasContent = false;
  final int msgClassId = 50;
  final int msgMethodId = 50;

  // Message arguments
  late int reserved_1;
  String? queue;
  String? exchange;
  String? routingKey;
  Map<String, Object>? arguments;

  QueueUnbind();

  void serialize(TypeEncoder encoder) {
    encoder
      ..writeUInt16(msgClassId)
      ..writeUInt16(msgMethodId)
      ..writeUInt16(reserved_1)
      ..writeShortString(queue)
      ..writeShortString(exchange)
      ..writeShortString(routingKey)
      ..writeFieldTable(arguments);
  }
}

class QueueUnbindOk implements Message {
  final bool msgHasContent = false;
  final int msgClassId = 50;
  final int msgMethodId = 51;

  // Message arguments

  QueueUnbindOk.fromStream(TypeDecoder decoder) {}

  void serialize(TypeEncoder encoder) {}
}

class QueuePurge implements Message {
  final bool msgHasContent = false;
  final int msgClassId = 50;
  final int msgMethodId = 30;

  // Message arguments
  late int reserved_1;
  String? queue;
  bool? noWait;

  QueuePurge();

  void serialize(TypeEncoder encoder) {
    encoder
      ..writeUInt16(msgClassId)
      ..writeUInt16(msgMethodId)
      ..writeUInt16(reserved_1)
      ..writeShortString(queue)
      ..writeBits([noWait]);
  }
}

class QueuePurgeOk implements Message {
  final bool msgHasContent = false;
  final int msgClassId = 50;
  final int msgMethodId = 31;

  // Message arguments
  int? messageCount;

  QueuePurgeOk.fromStream(TypeDecoder decoder) {
    messageCount = decoder.readUInt32();
  }

  void serialize(TypeEncoder encoder) {}
}

class QueueDelete implements Message {
  final bool msgHasContent = false;
  final int msgClassId = 50;
  final int msgMethodId = 40;

  // Message arguments
  late int reserved_1;
  String? queue;
  bool? ifUnused;
  bool? ifEmpty;
  bool? noWait;

  QueueDelete();

  void serialize(TypeEncoder encoder) {
    encoder
      ..writeUInt16(msgClassId)
      ..writeUInt16(msgMethodId)
      ..writeUInt16(reserved_1)
      ..writeShortString(queue)
      ..writeBits([ifUnused, ifEmpty, noWait]);
  }
}

class QueueDeleteOk implements Message {
  final bool msgHasContent = false;
  final int msgClassId = 50;
  final int msgMethodId = 41;

  // Message arguments
  int? messageCount;

  QueueDeleteOk.fromStream(TypeDecoder decoder) {
    messageCount = decoder.readUInt32();
  }

  void serialize(TypeEncoder encoder) {}
}
