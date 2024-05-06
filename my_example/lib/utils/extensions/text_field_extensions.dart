part of 'extensions.dart';

extension TextFieldExtensions on Widget {
  static Widget myTextFormField({
    int? maxLength,
    int? maxLines,
    String? placeholder,
    TextInputType? keyboardType,
    String? initialValue,
    void Function(String)? onChanged,
    void Function()? onEditingComplete,
    String? Function(String?)? validator,
    Color? fillColor,
    TextAlign textAlign = TextAlign.start,
    TextInputAction? textInputAction,
    bool autofocus = false,
    TextStyle? textStyle,
    String? helperText = '',
    TextEditingController? controller,
    EdgeInsetsGeometry? contentPadding,
  }) {
    return TextFormField(
      maxLength: maxLength,
      controller: controller,
      onEditingComplete: onEditingComplete,
      maxLines: maxLines,
      autofocus: autofocus,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      initialValue: initialValue,
      onChanged: onChanged,
      textAlign: textAlign,
      decoration: InputDecoration(
        helperText: helperText,
        counterText: '',
        hintText: placeholder,
        fillColor: fillColor,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.w),
      ),
      style: textStyle ?? TextStyle(fontSize: 16.sp),
    );
  }
}
