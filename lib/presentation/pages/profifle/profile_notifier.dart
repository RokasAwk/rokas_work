import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../routers/router.dart';
import 'profile_state.dart';

abstract class ProfileNotifier extends StateNotifier<ProfileState> {
  ProfileNotifier(super.state);
}

class ProfileNotifierImpl extends ProfileNotifier {
  final AppRouter appRouter;

  ProfileNotifierImpl({
    required this.appRouter,
  }) : super(ProfileState.init());
}
