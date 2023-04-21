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
import 'package:fmt/presentation/ui/components/buttons/fmt_button_elevated.dart';
import 'package:fmt/presentation/ui/components/buttons/fmt_button_text.dart';
import 'package:fmt/presentation/ui/components/fmt_alert_dialog.dart';
import 'package:fmt/presentation/ui/components/fmt_app_bar.dart';
import 'package:fmt/presentation/ui/components/fmt_bottom_bar.dart';
import 'package:fmt/presentation/ui/components/fmt_card.dart';
import 'package:fmt/presentation/ui/components/fmt_error_data.dart';
import 'package:fmt/presentation/ui/components/fmt_hero_text.dart';
import 'package:fmt/presentation/ui/components/fmt_loader.dart';
import 'package:fmt/presentation/ui/components/fmt_text_form_field.dart';
import 'package:fmt/presentation/ui/styles/colors.dart' as colors;
import 'package:fmt/presentation/utils/common.dart';

part 'components/fmt_categories_list.dart';
part 'components/fmt_category_card.dart';
part 'components/fmt_categories_diagram.dart';
part 'components/fmt_category_dialog_add/fmt_category_button_add.dart';
part 'components/fmt_category_dialog_add/fmt_category_dialog_add.dart';
part 'components/fmt_category_dialog_remove/fmt_category_button_remove.dart';
part 'components/fmt_category_dialog_remove/fmt_category_dialog_remove.dart';
part 'components/fmt_spending_dialog_add/fmt_spending_button_add.dart';
part 'components/fmt_spending_dialog_add/fmt_spending_dialog_add.dart';

class ScreenCategories extends StatelessWidget {
  const ScreenCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FMTAppBar(
        title: 'Апрель 2023',
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => GlobalNavigator.showAlert(_FMTCategoryDialogAdd()),
          ),
        ],
      ),
      body: SafeArea(
        child: BlocBuilder<BlocCategories, BlocCategoriesState>(
          builder: (_, state) => state.when(
            loading: () => const FMTLoader(),
            loaded: (categories) => _FMTCategoriesList(categories: categories),
            error: (message) => FMTErrorData(text: message),
          ),
        ),
      ),
      bottomNavigationBar: const FMTBottonBar(tab: TabBottomBar.expenses),
    );
  }
}
