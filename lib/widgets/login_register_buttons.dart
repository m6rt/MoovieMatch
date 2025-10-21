import 'package:flutter/material.dart';
import 'package:mooviematch/constants/theme.dart';

final TextEditingController _emailController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();
final TextEditingController _passwordControllerVerifaciton = TextEditingController();
final TextEditingController _usernameController = TextEditingController();



Widget loginTextFields(
  double screenHeight,
  double screenWidth,
  bool isPasswordButton,
  bool isEmailButton,
  bool isConfirmPasswordButton,
) {

  return Container(
    width: screenWidth * 0.9,
    height: screenHeight * 0.12,

    decoration: BoxDecoration(
      color: AppTheme.primaryColor,
      border: BoxBorder.all(color: AppTheme.textColor, width: 1),
      borderRadius: BorderRadius.circular(360),
    ),
    child: TextField(
      textAlign: TextAlign.center,
      style: const TextStyle(color: AppTheme.textColor),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: screenHeight * 0.025,
          horizontal: screenWidth * 0.05,
        ),
        border: InputBorder.none,
        hintText:  isPasswordButton ? isConfirmPasswordButton ? "Confirm Password" : "Password" :  isEmailButton ? "Email" : "username",//DÜZELT LOCAL YOK
        hintStyle: const TextStyle(color: AppTheme.textColor),
      ),
      controller: isPasswordButton ? isConfirmPasswordButton ? _passwordControllerVerifaciton : _passwordController :  isEmailButton ? _emailController : _usernameController,
      
      //(isPasswordButton ? : _emailController,
      cursorColor: AppTheme.textColor,
      obscureText: isPasswordButton ? true : false,
      autocorrect: false,
      keyboardType: isPasswordButton
          ? TextInputType.visiblePassword
          : TextInputType.emailAddress,
      cursorErrorColor: AppTheme.textColor,
    ),
  );
}

Widget sendButton(double screenHeight, double screenWidth, String txt) {
  return Container(
    width: screenWidth * 0.5,
    height: screenHeight * 0.15,
    decoration: BoxDecoration(
      color: AppTheme.primaryColor,
      borderRadius: BorderRadius.circular(360),
      border: Border.all(color: AppTheme.textColor, width: 1),
    ),
    child: Center(
      child: Text(
        txt,
        style: const TextStyle(
          color: AppTheme.textColor,
          fontSize: 24,
          fontFamily: 'PlayfairDisplay',
        ),
      ),
    ),
  );
}

Widget dontHaveButton(String localTxt) {
  return TextButton(
    onPressed: () {},
    child: Text(
      localTxt,
      style: TextStyle(
        color: AppTheme.textColor,
        fontSize: 12,
        fontFamily: 'PlayfairDisplay',
      ),
    ),
  );
}

Widget forgotPasswordButton(String localTxt) {
  return TextButton(
    onPressed: () {},
    child: Text(
      localTxt,
      style: TextStyle(
        color: AppTheme.textColor,
        fontSize: 12,
        fontFamily: 'PlayfairDisplay',
      ),
    ),
  );
}

Widget alreadyHaveButton(String localTxt) {
  return TextButton(
    onPressed: () {},
    child: Text(
      localTxt,
      style: TextStyle(
        color: AppTheme.textColor,
        fontSize: 12,
        fontFamily: 'PlayfairDisplay',
      ),
    ),
  );
}
