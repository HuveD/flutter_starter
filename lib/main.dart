import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:flutter_starter/core/notification/notification_manager.dart';
import 'package:flutter_starter/interfaces/database/local_database.dart';
import 'package:flutter_starter/router.dart';

import 'core/notification/notification.if.dart';
import 'gen/colors.gen.dart';
import 'l10n/app_localizations.dart';
import 'l10n/l10n.dart';

final logger = Logger();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalDatabase.init();
  await MeNotification.configureLocalTimeZone();
  runApp(const ProviderScope(child: FlutterStarterApp()));
}

class FlutterStarterApp extends ConsumerStatefulWidget {
  static final navKey = GlobalKey<NavigatorState>();

  const FlutterStarterApp({super.key});

  @override
  ConsumerState createState() => _FlutterStarterAppState();
}

class _FlutterStarterAppState extends ConsumerState<FlutterStarterApp> {
  @override
  void initState() {
    ref.read(notificationManagerProvider).initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: l10n.app_name,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: ColorName.white,
          background: ColorName.white,
          surface: ColorName.white,
          surfaceTint: ColorName.white,
        ),
        splashColor: ColorName.lightGray,
        highlightColor: ColorName.lightGray,
      ),
      routerConfig: router,
    );
  }
}
