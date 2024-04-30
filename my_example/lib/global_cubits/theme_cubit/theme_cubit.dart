import 'package:my_example/themes/themes.dart';
import 'package:my_example/utils/hive_box/hive_box.dart';
import 'package:my_example/utils/hive_box/hive_keys.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_state.dart';
part 'theme_cubit.freezed.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(_initialState());

  static ThemeState _initialState() {
    var themeType = HiveBoxes.appCache
        .get(AppCacheKeys.themeType, defaultValue: ThemeType.light.name);
    return ThemeState.initial(themeType: ThemeType.values.byName(themeType));
  }

  void toggleTheme() {
    if (state.themeType == ThemeType.light) {
      HiveBoxes.appCache.put(AppCacheKeys.themeType, ThemeType.dark.name);
      emit(state.copyWith(themeType: ThemeType.dark));
    } else {
      HiveBoxes.appCache.put(AppCacheKeys.themeType, ThemeType.light.name);
      emit(state.copyWith(themeType: ThemeType.light));
    }
  }
}
