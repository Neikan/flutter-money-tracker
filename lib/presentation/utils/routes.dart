// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:fmt/data/repositories/repository_profile/repository_profile_imp.dart';
import 'package:fmt/domain/blocs/bloc_profile/bloc_profile.dart';
import 'package:fmt/domain/blocs/bloc_profile/bloc_profile_event.dart';
import 'package:fmt/presentation/consts/routes.dart';
import 'package:fmt/presentation/ui/screens/screen_not_found.dart';
import 'package:fmt/presentation/ui/screens/screen_profile/screen_profile.dart';
import 'package:fmt/presentation/ui/screens/screen_summary/screen_summary.dart';

Route<dynamic> generateRoute(RouteSettings settings) => MaterialPageRoute(
      settings: settings,
      builder: (BuildContext context) {
        switch (settings.name) {
          case routeSummary:
            return const ScreenSummary();

          case routeProfile:
            return BlocProvider<BlocProfile>(
              create: (_) => BlocProfile(repo: const RepositoryProfileImp())
                ..add(BlocProfileEventInit()),
              child: const ScreenProfile(),
            );

          default:
            return const ScreenNotFound();
        }
      },
    );
