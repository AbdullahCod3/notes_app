import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, this.isLoading = false});
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: kPrimaryColor,
        ),
        child: Center(
          child: isLoading
              ? SizedBox(
                  height: 30,
                  width: 30,
                  child: CircularProgressIndicator(color: Colors.black),
                )
              : Text(
                  'Save',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
        ),
      ),
    );
  }
}
