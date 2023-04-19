// Package imports:
import 'package:uuid/uuid.dart';

// Project imports:
import 'package:fmt/data/models/app_spending/app_spending.dart';
import 'package:fmt/data/repositories/repository_spendings/repository_spendings.dart';

class RepositorySpendingsImp extends RepositorySpendings {
  const RepositorySpendingsImp();

  static List<AppSpending> state = [
    AppSpending(
      id: const Uuid().v4(),
      categoryId: '1',
      date: DateTime.now().millisecondsSinceEpoch,
      sum: 200.0,
    ),
    AppSpending(
      id: const Uuid().v4(),
      categoryId: '2',
      date: DateTime.now().millisecondsSinceEpoch,
      sum: 400.0,
    ),
    AppSpending(
      id: const Uuid().v4(),
      categoryId: '2',
      date: DateTime.now().millisecondsSinceEpoch,
      sum: 300.0,
    ),
  ];

  @override
  Future<List<AppSpending>> get(String id) async {
    return state.where((spending) => spending.categoryId == id).toList();
  }

  @override
  Future<void> add(AppSpending spending) async {
    state = [...state, spending];
  }
}
