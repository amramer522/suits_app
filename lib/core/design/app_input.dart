import 'package:flutter/material.dart';

class AppInput extends StatefulWidget {
  final String labelText, prefixIcon;
  final bool isPassword;
  final double bottomSpace;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const AppInput({Key? key, this.bottomSpace =16, this.isPassword=false, this.labelText="", required this.prefixIcon, this.validator, this.controller}) : super(key: key);

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  bool isHidden =true;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: widget.bottomSpace),
      child: TextFormField(
        controller: widget.controller,
        validator: widget.validator,
        decoration: InputDecoration(
            labelText: widget.labelText,
            prefixIcon: Padding(
              padding: const EdgeInsets.all(16),
              child: Image.asset(
                "assets/icons/${widget.prefixIcon}",
                fit: BoxFit.scaleDown,
                color:  Theme.of(context).primaryColor,
                height: 24,
                width: 24,
              ),
            ),
            suffixIcon: widget.isPassword ? GestureDetector(onTap: () {
              isHidden = !isHidden;
              setState(() {

              });
            }, child: Icon(isHidden?Icons.visibility_off:Icons.visibility)) : null),
        obscureText: widget.isPassword && isHidden,
      ),
    );
  }
}
