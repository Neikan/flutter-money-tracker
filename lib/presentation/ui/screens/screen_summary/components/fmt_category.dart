part of '../screen_summary.dart';

class _FMTCategory extends StatelessWidget {
  final AppCategory category;

  const _FMTCategory({
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
        title: Text(category.name),
        subtitle: const Text(
          'Добавить расход',
          style: TextStyle(
            fontSize: 10,
            color: colors.gray,
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          color: Color(int.parse('0xff${category.color}')),
        ),
      ),
    );
  }
}
