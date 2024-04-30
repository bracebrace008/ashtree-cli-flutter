part of 'theme_cubit.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.initial({
    required ThemeType themeType,
  }) = _Data;
}
