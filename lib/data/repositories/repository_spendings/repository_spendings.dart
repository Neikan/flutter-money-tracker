// Project imports:
import 'package:fmt/data/models/app_spending/app_spending.dart';

abstract class RepositorySpendings {
  const RepositorySpendings();

  Future<List<AppSpending>> get(String id);

  Future<void> add(AppSpending spending);
}
