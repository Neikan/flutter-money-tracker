// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:fmt/data/repositories/repository_categories/repository_categories_imp.dart';
import 'package:fmt/data/repositories/repository_spendings/repository_spendings_imp.dart';
import 'package:fmt/domain/blocs/bloc_categories/bloc_categories.dart';
import 'package:fmt/domain/blocs/bloc_categories/bloc_categories_event.dart';
import 'package:fmt/domain/blocs/bloc_spendings/bloc_spendings.dart';
import 'package:fmt/presentation/ui/components/fmt_app.dart';

void main() async {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<BlocCategories>(
          create: (_) => BlocCategories(repo: const RepositoryCategoriesImp())
            ..add(BlocCategoriesEventInit()),
        ),
        BlocProvider<BlocSpendings>(
          create: (_) => BlocSpendings(repo: const RepositorySpendingsImp()),
        ),
      ],
      child: const FMTApp(),
    ),
  );
}
