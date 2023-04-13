// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:fmt/data/models/app_profile/app_profile.dart';
import 'package:fmt/domain/blocs/bloc_profile/bloc_profile.dart';
import 'package:fmt/domain/blocs/bloc_profile/bloc_profile_state.dart';
import 'package:fmt/presentation/consts/enums.dart';
import 'package:fmt/presentation/consts/keys.dart';
import 'package:fmt/presentation/consts/translations.dart';
import 'package:fmt/presentation/ui/components/fmt_app_bar.dart';
import 'package:fmt/presentation/ui/components/fmt_bottom_bar.dart';
import 'package:fmt/presentation/ui/components/fmt_error_data.dart';
import 'package:fmt/presentation/ui/components/fmt_loader.dart';
import 'package:fmt/presentation/ui/styles/colors.dart' as colors;

part 'components/fmt_avatar.dart';
part 'components/fmt_button_save.dart';
part 'components/fmt_button_signout.dart';
part 'components/fmt_profile.dart';

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FMTAppBar(
        title: labelsProfile[keyTitle]!,
      ),
      body: SafeArea(
        child: BlocBuilder<BlocProfile, BlocProfileState>(
          builder: (context, state) => state.when(
            loading: () => const FMTLoader(),
            loaded: (profile) => _FMTProfile(profile: profile),
            error: (message) => FMTErrorData(text: message),
          ),
        ),
      ),
      bottomNavigationBar: const FMTBottonBar(tab: TabBottomBar.profile),
    );
  }
}
