// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:fmt/data/models/app_category/app_category.dart';
import 'package:fmt/data/models/app_spending/app_spending.dart';
import 'package:fmt/domain/blocs/bloc_spendings/bloc_spendings.dart';
import 'package:fmt/domain/blocs/bloc_spendings/bloc_spendings_event.dart';
import 'package:fmt/domain/blocs/bloc_spendings/bloc_spendings_state.dart';
import 'package:fmt/presentation/consts/enums.dart';
import 'package:fmt/presentation/consts/keys.dart';
import 'package:fmt/presentation/consts/translations.dart';
import 'package:fmt/presentation/ui/components/fmt_alert_dialog.dart';
import 'package:fmt/presentation/ui/components/fmt_app_bar.dart';
import 'package:fmt/presentation/ui/components/fmt_bottom_bar.dart';
import 'package:fmt/presentation/ui/components/fmt_card.dart';
import 'package:fmt/presentation/ui/components/fmt_error_data.dart';
import 'package:fmt/presentation/ui/components/fmt_loader.dart';
import 'package:fmt/presentation/ui/styles/colors.dart' as colors;
import 'package:fmt/presentation/utils/common.dart';
import 'package:fmt/presentation/utils/datetime.dart';

part 'components/fmt_button_confirm.dart';
part 'components/fmt_spending.dart';
part 'components/fmt_spendings.dart';

class ScreenSpendings extends StatelessWidget {
  final AppCategory category;

  const ScreenSpendings({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FMTAppBar(
        title: category.name,
        color: parseColor(category.color),
        tag: category.id,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: BlocBuilder<BlocSpendings, BlocSpendingsState>(
          builder: (_, state) => state.when(
            loading: () => const FMTLoader(),
            loaded: (spendings) => _FMTSpendings(spendings: spendings),
            error: (message) => FMTErrorData(text: message),
          ),
        ),
      ),
      bottomNavigationBar: const FMTBottonBar(tab: TabBottomBar.expenses),
    );
  }
}
