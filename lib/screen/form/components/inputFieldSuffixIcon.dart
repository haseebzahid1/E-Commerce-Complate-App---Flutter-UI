import 'package:flutter/material.dart';

import '../../../style.dart';

class InputFieldSuffixIcon extends StatefulWidget {
  String? initialValue;
  String? hintText;
  String? labelText;
  Widget? prefixIcon;
  bool isPassword;
  bool? check;
  void Function(String)? onChanged;
  void Function(String?)? onSaved;
  String? Function(String?)? validate;
  InputFieldSuffixIcon({
    Key? key,
    this.initialValue,
    this.hintText,
    this.labelText,
    this.onSaved,
    this.onChanged,
    this.validate,
    this.prefixIcon,
    this.isPassword = false,
  }) : super(key: key);

  @override
  _InputFieldSuffixIconState createState() => _InputFieldSuffixIconState();
}

class _InputFieldSuffixIconState extends State<InputFieldSuffixIcon> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isPassword,
      initialValue: widget.initialValue,
      decoration: InputDecoration(
          contentPadding:  const EdgeInsets.symmetric(
            horizontal: 42,
            vertical: 20,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(color: kTextColor,width: 2),
            gapPadding: 10,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(color: kTextColor,width: 2),
            gapPadding: 10,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(color: kTextColor,width: 2),
          ),
          hintText: widget.hintText,
          labelText: widget.labelText,
          prefixIcon: widget.prefixIcon,
          suffixIcon: InkWell(
              onTap: () {
                setState(() {
                  widget.isPassword = !widget.isPassword;
                });
              },
              child: widget.isPassword
                  ? const Icon(Icons.visibility)
                  : const Icon(Icons.visibility_off))),
      onSaved: widget.onSaved,
      onChanged: widget.onChanged,
      validator: widget.validate,
    );
  }
}
