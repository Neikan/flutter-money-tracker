// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fmt/presentation/consts/enums.dart';

import 'package:fmt/presentation/ui/styles/colors.dart' as colors;

class FMTFieldText extends StatelessWidget {
  final Iterable<String>? autofillHints;
  final bool autofocus;
  final bool? enabled,
      enableInteractiveSelection,
      enableSuggestions,
      hasError,
      isRequired,
      obscureText,
      readOnly,
      withCounter;
  final EdgeInsetsGeometry? padding, contentPadding;
  final FocusNode? focusNode;
  final int? maxLength;
  final AppFieldStyle fieldStyle;
  final List<TextInputFormatter>? inputFormatters;
  final String? errorText, hintText, labelText;
  final String? Function(String?)? onValidated;
  final TextInputType? textInputType;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final Widget? prefixIcon, suffixIcon;

  const FMTFieldText({
    super.key,
    this.autofillHints,
    this.autofocus = false,
    this.contentPadding,
    this.controller,
    this.enabled = true,
    this.enableInteractiveSelection = true,
    this.enableSuggestions,
    this.errorText,
    this.focusNode,
    this.hasError,
    this.hintText,
    this.inputFormatters,
    this.fieldStyle = AppFieldStyle.base,
    this.isRequired,
    this.labelText,
    this.maxLength,
    this.obscureText,
    this.onChanged,
    this.onTap,
    this.onValidated,
    this.padding,
    this.prefixIcon,
    this.readOnly,
    this.textInputType,
    this.textInputAction,
    this.suffixIcon,
    this.withCounter = false,
  });

  @override
  Widget build(BuildContext context) {
    final field = TextFormField(
      autofillHints: autofillHints,
      autofocus: autofocus,
      controller: controller,
      cursorColor: colors.base,
      decoration: _getFieldStyle(),
      enabled: enabled,
      enableInteractiveSelection: enableInteractiveSelection,
      enableSuggestions: enableSuggestions ?? true,
      focusNode: focusNode,
      inputFormatters: inputFormatters,
      keyboardType: textInputType,
      maxLength: maxLength,
      obscureText: obscureText ?? false,
      onChanged: onChanged,
      onTap: onTap,
      readOnly: readOnly ?? false,
      textInputAction: textInputAction,
      validator: onValidated,
    );

    return Container(padding: padding, child: field);
  }

  InputDecoration _getFieldStyle() {
    if (fieldStyle == AppFieldStyle.bordered) return _getStyleBordered();

    return _getStyleBase();
  }

  InputDecoration _getStyleBordered() {
    return InputDecoration(
      border: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: colors.grayLight,
        ),
      ),
      contentPadding: contentPadding,
      labelText: labelText,
      labelStyle: const TextStyle(color: colors.gray),
      floatingLabelStyle: const TextStyle(),
      counterText: _getCounter(),
      focusColor: colors.base,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      counterStyle: const TextStyle(
        color: colors.gray,
        fontSize: 10.0,
      ),
    );
  }

  InputDecoration _getStyleBase() {
    return InputDecoration(
      border: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: colors.grayLight,
        ),
      ),
      contentPadding: contentPadding,
      labelText: labelText,
      labelStyle: const TextStyle(color: colors.gray),
      errorStyle: const TextStyle(
        color: colors.red,
      ),
      floatingLabelStyle: const TextStyle(),
      counterText: _getCounter(),
      focusColor: colors.base,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
    );
  }

  String? _getCounter() => withCounter == true ? null : '';
}
