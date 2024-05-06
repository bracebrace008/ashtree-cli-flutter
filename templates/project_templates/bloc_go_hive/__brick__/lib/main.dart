import 'package:{{projectName.snakeCase()}}/global_cubits/theme_cubit/theme_cubit.dart';
import 'package:{{projectName.snakeCase()}}/router/app_router.dart';
import 'package:{{projectName.snakeCase()}}/themes/themes.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('appCache');
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en', 'US'), Locale('zh', 'CN')],
      path: 'assets/translations',
      startLocale: const Locale('zh', 'CN'),
      fallbackLocale: const Locale('en', 'US'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 933),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => ThemeCubit()),
          ],
          child: BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, ThemeState themeState) {
              return MaterialApp.router(
                routerConfig: appRouter,
                builder: BotToastInit(),
                theme: themeState.themeType == ThemeType.light
                    ? Themes.light
                    : Themes.dark,
                localizationsDelegates: context.localizationDelegates,
                supportedLocales: context.supportedLocales,
              );
            },
          ),
        );
      },
    );
  }
}
