// Project imports:
import 'package:fmt/presentation/consts/enums.dart';
import 'package:fmt/presentation/consts/keys.dart';

final labelsCategories = <String, String>{
  keyContent: 'За ... нет расходов',
  TabBottomBar.expenses.name: 'Расходы',
  TabBottomBar.profile.name: 'Профиль',
  keySpendingAdd: 'Добавить расход',
  keySpendingAll: 'Всего: ',
};

const labelsDialogCategory = <String, String>{
  keyTitle: 'Добавить категорию',
  keyFieldName: 'Название',
  keyFieldColor: 'Цвет',
};

const labelsDialogCategoryRemove = <String, String>{
  keyTitle: 'Удалить категорию ',
};

const labelsDialogSpending = <String, String>{
  keyTitle: 'Добавить расход',
  keyFieldSum: 'Введите сумму',
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
  keyButtonRemove: 'Удалить',
  keyButtonConfirm: 'Подтвердить',
};

const labelsNotFound = <String, String>{
  keyTitle: 'Ошибка',
  keyContent: 'Страница на найдена',
};
