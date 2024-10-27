import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'l10n/l10n.dart';
import 'presentation/di_providers/di_provider.dart';
import 'presentation/routers/router.dart';
import 'presentation/theme/theme.dart';
import 'utils/toast_utils.dart';

class RokasWorkApp extends ConsumerStatefulWidget {
  const RokasWorkApp({super.key});

  @override
  ConsumerState<RokasWorkApp> createState() {
    return RokasWorkAppState();
  }
}

class RokasWorkAppState extends ConsumerState<RokasWorkApp> {
  late final AppRouter appRouter;
  late Locale locale;

  @override
  void initState() {
    super.initState();
    appRouter = ref.read(routerProvider);
    L10n.updateNavigatorKey(appRouter.navigatorKey);
  }

  @override
  Widget build(BuildContext context) {
    locale = const Locale('zh', 'TW');

    return MaterialApp.router(
      title: 'Home',
      builder: (context, child) {
        return Overlay(
          initialEntries: [
            if (child != null) ...[
              OverlayEntry(
                builder: (context) {
                  ToastUtils.init(context, appRouter);
                  return child;
                },
              ),
            ],
          ],
        );
      },
      theme: appTheme,
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
      localizationsDelegates: L10n.localizationsDelegates(),
      supportedLocales: L10n.supportedLocales(),
      locale: locale,
    );
  }
}
