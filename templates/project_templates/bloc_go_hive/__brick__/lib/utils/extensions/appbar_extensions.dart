part of 'extensions.dart';

extension AppBarExtensions on Widget {
  static AppBar myAppBar({
    required String title,
    List<Widget>? actions,
    Widget? leading,
  }) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(fontSize: 20.sp),
      ),
      actions: actions,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios_new_rounded, size: 20.w),
        onPressed: () => appRouter.pop(),
      ),
    );
  }
}
