part of '../screen_summary.dart';

class _FMTCategory extends StatelessWidget {
  final AppCategory category;

  const _FMTCategory({
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 25.0),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: const [
          BoxShadow(
            color: colors.shadow,
            spreadRadius: 0.0,
            blurRadius: 13.0,
            offset: Offset(0.0, 4.0),
          ),
        ],
      ),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        title: FMTHeroText(
          tag: category.id,
          title: category.name,
        ),
        subtitle: Text(
          labelsCategories[keySpendingAdd]!,
          style: const TextStyle(
            fontSize: 10,
            color: colors.gray,
          ),
        ),
        trailing: IconButton(
          onPressed: () {
            final arguments = {keyArgsCategory: category};

            Navigator.pushNamed(context, routeSpendings, arguments: arguments);
          },
          color: parseColor(category.color),
          icon: const Icon(Icons.arrow_forward_ios_rounded),
        ),
        onTap: () => GlobalNavigator.showAlert(FMTDialogSpending(
          category: category,
        )),
      ),
    );
  }
}
