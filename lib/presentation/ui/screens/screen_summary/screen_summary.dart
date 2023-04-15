// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:fmt/data/models/app_category/app_category.dart';
import 'package:fmt/domain/blocs/bloc_category/bloc_categories.dart';
import 'package:fmt/domain/blocs/bloc_category/bloc_categories_state.dart';
import 'package:fmt/presentation/consts/enums.dart';
import 'package:fmt/presentation/ui/components/fmt_app_bar.dart';
import 'package:fmt/presentation/ui/components/fmt_bottom_bar.dart';
import 'package:fmt/presentation/ui/components/fmt_error_data.dart';
import 'package:fmt/presentation/ui/components/fmt_loader.dart';
import 'package:fmt/presentation/ui/styles/colors.dart' as colors;

part 'components/fmt_categories.dart';
part 'components/fmt_category.dart';
part 'components/fmt_diagram.dart';

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
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: BlocBuilder<BlocCategories, BlocCategoriesState>(
          builder: (context, state) => state.when(
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
