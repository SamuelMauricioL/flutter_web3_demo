import 'package:flutter/material.dart';
import 'package:flutter_web3_demo/utils/constants.dart';

class PrimaryButton extends StatefulWidget {
  final String text;
  final Function onPressed;
  final bool loading;
  final Color? bgColor;
  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.loading,
    this.bgColor,
  });

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        widget.onPressed();
      },
      style: ButtonStyle(
        backgroundColor: widget.bgColor != null
            ? MaterialStateProperty.all<Color>(widget.bgColor!)
            : MaterialStateProperty.all<Color>(ColorConstants.primaryAppColor),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: widget.loading
            ? const CircularProgressIndicator()
            : Text(
                widget.text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
      ),
      // color: Colors.blue,
    );
  }
}
