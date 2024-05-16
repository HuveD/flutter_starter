import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_starter/core/notification/notification_manager.dart';
import 'package:flutter_starter/pages/chat/page.dart';
import 'package:flutter_starter/pages/home/home.viewmodel.dart';
import 'package:flutter_starter/pages/home/widget/drawer.dart';
import 'package:flutter_starter/pages/home/widget/home_app_bar.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState createState() => _MainPageState();
}

class _MainPageState extends ConsumerState<HomePage> {
  late final _notificationManager = ref.read(notificationManagerProvider);
  late final _vm = ref.read(homeViewModelProvider.notifier);
  final _key = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    _notificationManager.checkPermission();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(homeViewModelProvider);
    return Scaffold(
      key: _key,
      appBar: HomeAppBar(
        title: state.currentRoom.titleWithDefault,
        onMenuTap: () => _key.currentState?.openDrawer(),
      ),
      onDrawerChanged: (opened) {
        if (opened) _vm.loadRooms();
      },
      drawer: HomeDrawer(
        rooms: state.rooms,
        selectedRoom: state.currentRoom,
        onSelectedRoom: (room) {
          context.pop();
          _vm.currentRoom = room;
        },
      ),
      body: ChatPage(
        state.currentRoom,
        key: ValueKey(state.currentRoom.id),
      ),
    );
  }
}
