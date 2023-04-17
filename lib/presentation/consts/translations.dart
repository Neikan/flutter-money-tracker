// Project imports:
import 'package:fmt/presentation/consts/enums.dart';
import 'package:fmt/presentation/consts/keys.dart';

final labelsCategories = <String, String>{
  keyContent: 'За ... нет расходов',
  TabBottomBar.expenses.name: 'Расходы',
  TabBottomBar.profile.name: 'Профиль',
};

final labelsBottomBar = <TabBottomBar, String>{
  TabBottomBar.expenses: 'Расходы',
  TabBottomBar.profile: 'Профиль',
};

const labelsProfile = <String, String>{
  keyTitle: 'Профиль',
};

const labelsButtons = <String, String>{
  keyButtonSave: 'Сохранить',
  keyButtonSignout: 'Выйти',
  keyButtonAdd: 'Добавить',
  keyButtonCancel: 'Отмена',
};

const labelsNotFound = <String, String>{
  keyTitle: 'Ошибка',
  keyContent: 'Страница на найдена',
};
