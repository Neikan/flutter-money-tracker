// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';

// Project imports:
import 'package:fmt/data/models/app_category/app_category.dart';
import 'package:fmt/data/models/app_spending/app_spending.dart';
import 'package:fmt/domain/blocs/bloc_categories/bloc_categories.dart';
import 'package:fmt/domain/blocs/bloc_categories/bloc_categories_event.dart';
import 'package:fmt/domain/blocs/bloc_categories/bloc_categories_state.dart';
import 'package:fmt/domain/blocs/bloc_spendings/bloc_spendings.dart';
import 'package:fmt/domain/blocs/bloc_spendings/bloc_spendings_event.dart';
import 'package:fmt/presentation/config/navigator.dart';
import 'package:fmt/presentation/consts/enums.dart';
import 'package:fmt/presentation/consts/keys.dart';
import 'package:fmt/presentation/consts/routes.dart';
import 'package:fmt/presentation/consts/translations.dart';
import 'package:fmt/presentation/ui/components/fmt_alert_dialog.dart';
import 'package:fmt/presentation/ui/components/fmt_app_bar.dart';
import 'package:fmt/presentation/ui/components/fmt_bottom_bar.dart';
import 'package:fmt/presentation/ui/components/fmt_card.dart';
import 'package:fmt/presentation/ui/components/fmt_error_data.dart';
import 'package:fmt/presentation/ui/components/fmt_hero_text.dart';
import 'package:fmt/presentation/ui/components/fmt_loader.dart';
import 'package:fmt/presentation/ui/components/fmt_text_form_field.dart';
import 'package:fmt/presentation/ui/styles/colors.dart' as colors;
import 'package:fmt/presentation/ui/styles/sizes.dart' as sizes;
import 'package:fmt/presentation/utils/common.dart';

part 'components/fmt_dialog_category/fmt_button_add_category.dart';
part 'components/fmt_dialog_spending/fmt_button_add_spending.dart';
part 'components/fmt_button_cancel.dart';
part 'components/fmt_categories.dart';
part 'components/fmt_category.dart';
part 'components/fmt_diagram_pie.dart';
part 'components/fmt_dialog_category/fmt_dialog_category.dart';
part 'components/fmt_dialog_spending/fmt_dialog_spending.dart';

class ScreenSummary extends StatelessWidget {
  const ScreenSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FMTAppBar(
        title: 'Апрель 2023',
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => GlobalNavigator.showAlert(FMTDialogCategory()),
          ),
        ],
      ),
      body: SafeArea(
        child: BlocBuilder<BlocCategories, BlocCategoriesState>(
          builder: (_, state) => state.when(
            loading: () => const FMTLoader(),
            loaded: (categories) => _FMTCategories(categories: categories),
            error: (message) => FMTErrorData(text: message),
          ),
        ),
      ),
      bottomNavigationBar: const FMTBottonBar(tab: TabBottomBar.expenses),
    );
  }
}
