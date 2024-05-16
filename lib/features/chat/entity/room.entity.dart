import 'package:cuid2/cuid2.dart';
import 'package:isar/isar.dart';

import '../../../core/util/fast_int_hash.dart';

part 'room.entity.g.dart';

@collection
class RoomEntity {
  RoomEntity();

  late final String id; //
  Id get isarId => fastHash(id);

  late final String? title;
  late final DateTime createdAt;
  late final DateTime updatedAt;

  factory RoomEntity.create({String? id, String? title, DateTime? createdAt}) {
    final date = (createdAt ?? DateTime.now()).toUtc();
    final room = RoomEntity();
    room.id = cuid();
    room.title = title;
    room.createdAt = date;
    room.updatedAt = date;
    return room;
  }
}
