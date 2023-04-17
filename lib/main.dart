// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:fmt/data/repositories/repository_categories/repository_categories_imp.dart';
import 'package:fmt/domain/blocs/bloc_category/bloc_categories.dart';
import 'package:fmt/domain/blocs/bloc_category/bloc_categories_event.dart';
import 'package:fmt/presentation/ui/components/fmt_app.dart';
import 'package:fmt/presentation/ui/screens/screen_summary/screen_summary.dart';

void main() async {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<BlocCategories>(
          create: (_) => BlocCategories(repo: const RepositoryCategoriesImp())
            ..add(BlocCategoriesEventInit()),
          child: const ScreenSummary(),
        ),
      ],
      child: const FMTApp(),
    ),
  );
}
