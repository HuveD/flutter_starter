import 'package:isar/isar.dart';
import 'package:flutter_starter/features/chat/entity/message.entity.dart';
import 'package:flutter_starter/features/chat/entity/room.entity.dart';
import 'package:path_provider/path_provider.dart';

class LocalDatabase {
  static Isar? _isar;

  static Future<void> init() async {
    if (_isar != null) return;
    final dir = await getApplicationDocumentsDirectory();
    _isar = await Isar.open(
      [RoomEntitySchema, MessageEntitySchema],
      directory: dir.path,
    );
  }

  static Isar get instance {
    if (_isar == null) {
      throw Exception('Database not initialized');
    }
    return _isar!;
  }

  static Future<void> write(Future<void> Function(Isar) task) {
    return instance.writeTxn(() => task(instance));
  }
}
