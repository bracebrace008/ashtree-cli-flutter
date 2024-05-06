part of 'extensions.dart';

extension BaseExtensions on Widget {
  Widget myScaffoldWrapper({
    bool isSafeArea = false,
    String? title,
    bool isShowAppBar = true,
  }) {
    return Scaffold(
      appBar:
          isShowAppBar ? AppBarExtensions.myAppBar(title: title ?? '') : null,
      body: isSafeArea ? SafeArea(child: this) : this,
    );
  }

  Widget myBox({
    required BuildContext context,
    double? width,
    double? height,
    EdgeInsetsGeometry? padding,
    Color? backgroundColor,
    EdgeInsetsGeometry? margin,
    BoxBorder? border,
    BorderRadius? borderRadius,
    AlignmentGeometry? alignment,
  }) {
    return Container(
      alignment: alignment,
      height: height,
      width: width,
      padding: padding,
      margin: margin ?? EdgeInsets.zero,
      decoration: BoxDecoration(
        border: border,
        color: backgroundColor ?? context.theme.colorScheme.surface,
        borderRadius: borderRadius ?? BorderRadius.circular(8.w),
      ),
      child: this,
    );
  }

  Widget myButton({
    required void Function()? onPressed,
    double? width,
    double? height,
    bool isLoading = false,
    bool hasSplash = true,
    Color? backgroundColor,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: backgroundColor != null
              ? MaterialStateProperty.all(backgroundColor)
              : null,
          overlayColor: !hasSplash
              ? MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.transparent;
                    }
                    return null;
                  },
                )
              : null,
        ),
        child: !isLoading
            ? this
            : Center(
                child: SpinKitThreeBounce(
                color: Colors.grey,
                size: 24.w,
              )),
      ),
    );
  }

  Widget myIconButton({
    required void Function()? onPressed,
    double? width,
    double? height,
    Color? color,
    BorderRadius? borderRadius,
  }) {
    return InkWell(
      onTap: onPressed,
      borderRadius: borderRadius ?? BorderRadius.circular(32.w),
      child: Ink(
        decoration: BoxDecoration(
          color: color,
          borderRadius: borderRadius ?? BorderRadius.circular(32.w),
        ),
        width: width,
        height: height,
        child: this,
      ),
    );
  }

  Widget myOnTap(
    Function() onTap, {
    HitTestBehavior? behavior,
  }) {
    return GestureDetector(
      behavior: behavior,
      onTap: onTap,
      child: this,
    );
  }

  Widget margin(EdgeInsetsGeometry margin) {
    return Container(
      margin: margin,
      child: this,
    );
  }
}
