// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
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
  final EdgeInsetsGeometry? padding;
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
    return Container(
      padding: padding,
      child: TextFormField(
        autofillHints: autofillHints,
        autofocus: autofocus,
        controller: controller,
        cursorColor: colors.brand,
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
      ),
    );
  }

  InputDecoration _getFieldStyle() {
    if (fieldStyle == AppFieldStyle.bordered) return _getStyleBordered();

    return _getStyleBase();
  }

  InputDecoration _getStyleBordered() {
    return InputDecoration(
      border: const OutlineInputBorder(
        borderSide: BorderSide(
          color: colors.grayLight,
        ),
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: colors.brand,
        ),
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 21.0),
      labelText: labelText,
      counterText: _counterText,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
    );
  }

  InputDecoration _getStyleBase() {
    return InputDecoration(
      border: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: colors.grayLight,
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 5.0,
        vertical: 0.0,
      ),
      labelText: labelText,
      counterText: _counterText,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
    );
  }

  String? get _counterText => withCounter == true ? null : '';
}
