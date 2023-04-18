class AppSpending {
  final String id, categoryId;
  final double sum;
  final DateTime date;

  const AppSpending({
    required this.id,
    required this.categoryId,
    required this.sum,
    required this.date,
  });
}
