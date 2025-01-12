// The file contains all method messages for AMQP class Basic (id: 60)
//
// File was auto-generated by generate_bindings.dart at 2019-03-21 11:46:08.137286
//
// Do not modify

// ignore_for_file: empty_constructor_bodies

part of dart_amqp.protocol;

class BasicQos implements Message {
  final bool msgHasContent = false;
  final int msgClassId = 60;
  final int msgMethodId = 10;

  // Message arguments
  int? prefetchSize;
  late int prefetchCount;
  bool? global;

  BasicQos();

  void serialize(TypeEncoder encoder) {
    encoder
      ..writeUInt16(msgClassId)
      ..writeUInt16(msgMethodId)
      ..writeUInt32(prefetchSize!)
      ..writeUInt16(prefetchCount)
      ..writeBits([global]);
  }
}

class BasicQosOk implements Message {
  final bool msgHasContent = false;
  final int msgClassId = 60;
  final int msgMethodId = 11;

  // Message arguments

  BasicQosOk.fromStream(TypeDecoder decoder) {}

  void serialize(TypeEncoder encoder) {}
}

class BasicConsume implements Message {
  final bool msgHasContent = false;
  final int msgClassId = 60;
  final int msgMethodId = 20;

  // Message arguments
  late int reserved_1;
  String? queue;
  String? consumerTag;
  bool? noLocal;
  bool? noAck;
  bool? exclusive;
  bool? noWait;
  Map<String, Object>? arguments;

  BasicConsume();

  void serialize(TypeEncoder encoder) {
    encoder
      ..writeUInt16(msgClassId)
      ..writeUInt16(msgMethodId)
      ..writeUInt16(reserved_1)
      ..writeShortString(queue)
      ..writeShortString(consumerTag)
      ..writeBits([noLocal, noAck, exclusive, noWait])
      ..writeFieldTable(arguments);
  }
}

class BasicConsumeOk implements Message {
  final bool msgHasContent = false;
  final int msgClassId = 60;
  final int msgMethodId = 21;

  // Message arguments
  String? consumerTag;

  BasicConsumeOk.fromStream(TypeDecoder decoder) {
    consumerTag = decoder.readShortString();
  }

  void serialize(TypeEncoder encoder) {}
}

class BasicCancel implements Message {
  final bool msgHasContent = false;
  final int msgClassId = 60;
  final int msgMethodId = 30;

  // Message arguments
  String? consumerTag;
  bool? noWait;

  BasicCancel();

  void serialize(TypeEncoder encoder) {
    encoder
      ..writeUInt16(msgClassId)
      ..writeUInt16(msgMethodId)
      ..writeShortString(consumerTag)
      ..writeBits([noWait]);
  }
}

class BasicCancelOk implements Message {
  final bool msgHasContent = false;
  final int msgClassId = 60;
  final int msgMethodId = 31;

  // Message arguments
  String? consumerTag;

  BasicCancelOk.fromStream(TypeDecoder decoder) {
    consumerTag = decoder.readShortString();
  }

  void serialize(TypeEncoder encoder) {}
}

class BasicPublish implements Message {
  final bool msgHasContent = true;
  final int msgClassId = 60;
  final int msgMethodId = 40;

  // Message arguments
  late int reserved_1;
  String? exchange;
  String? routingKey;
  bool? mandatory;
  bool? immediate;

  BasicPublish();

  void serialize(TypeEncoder encoder) {
    encoder
      ..writeUInt16(msgClassId)
      ..writeUInt16(msgMethodId)
      ..writeUInt16(reserved_1)
      ..writeShortString(exchange)
      ..writeShortString(routingKey)
      ..writeBits([mandatory, immediate]);
  }
}

class BasicReturn implements Message {
  final bool msgHasContent = true;
  final int msgClassId = 60;
  final int msgMethodId = 50;

  // Message arguments
  int? replyCode;
  String? replyText;
  String? exchange;
  String? routingKey;

  BasicReturn.fromStream(TypeDecoder decoder) {
    replyCode = decoder.readUInt16();
    replyText = decoder.readShortString();
    exchange = decoder.readShortString();
    routingKey = decoder.readShortString();
  }

  void serialize(TypeEncoder encoder) {}
}

class BasicDeliver implements Message {
  final bool msgHasContent = true;
  final int msgClassId = 60;
  final int msgMethodId = 60;

  // Message arguments
  String? consumerTag;
  int? deliveryTag;
  bool? redelivered;
  String? exchange;
  String? routingKey;

  BasicDeliver.fromStream(TypeDecoder decoder) {
    consumerTag = decoder.readShortString();
    deliveryTag = decoder.readUInt64();
    int _bitmask;
    _bitmask = decoder.readUInt8();
    redelivered = _bitmask & 0x1 != 0;
    exchange = decoder.readShortString();
    routingKey = decoder.readShortString();
  }

  void serialize(TypeEncoder encoder) {}
}

class BasicAck implements Message {
  final bool msgHasContent = false;
  final int msgClassId = 60;
  final int msgMethodId = 80;

  // Message arguments
  int? deliveryTag;
  bool? multiple;

  BasicAck();

  void serialize(TypeEncoder encoder) {
    encoder
      ..writeUInt16(msgClassId)
      ..writeUInt16(msgMethodId)
      ..writeUInt64(deliveryTag!)
      ..writeBits([multiple]);
  }
}

class BasicReject implements Message {
  final bool msgHasContent = false;
  final int msgClassId = 60;
  final int msgMethodId = 90;

  // Message arguments
  int? deliveryTag;
  bool? requeue;

  BasicReject();

  void serialize(TypeEncoder encoder) {
    encoder
      ..writeUInt16(msgClassId)
      ..writeUInt16(msgMethodId)
      ..writeUInt64(deliveryTag!)
      ..writeBits([requeue]);
  }
}

class BasicRecover implements Message {
  final bool msgHasContent = false;
  final int msgClassId = 60;
  final int msgMethodId = 110;

  // Message arguments
  bool? requeue;

  BasicRecover();

  void serialize(TypeEncoder encoder) {
    encoder
      ..writeUInt16(msgClassId)
      ..writeUInt16(msgMethodId)
      ..writeBits([requeue]);
  }
}

class BasicRecoverOk implements Message {
  final bool msgHasContent = false;
  final int msgClassId = 60;
  final int msgMethodId = 111;

  // Message arguments

  BasicRecoverOk.fromStream(TypeDecoder decoder) {}

  void serialize(TypeEncoder encoder) {}
}
