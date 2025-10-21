import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:mooviematch/constants/theme.dart';
import 'package:mooviematch/generated/l10n.dart';
import 'package:mooviematch/widgets/login_register_buttons.dart';
import 'package:mooviematch/widgets/set_language_buttons.dart';

class RegisterView extends StatelessWidget {
  RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.width;
    return Scaffold(
      backgroundColor: AppTheme.primaryColor,
      body: Stack(
        children: [
          SizedBox(
            width: screenWidth,
            child: Image.asset("assets/images/topLogin.png", fit: BoxFit.fill),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: screenHeight * 0.4,
              horizontal: screenWidth * 0.3,
            ),
            child: Image(image: AssetImage("assets/images/logo.png")),
          ),
          Padding(
            padding:  EdgeInsets.fromLTRB(screenWidth*0.05, screenHeight*0.75, 0, 0),
            child: Text(
              S.of(context).welcome,
              style: TextStyle(
                color: AppTheme.textColor,
                fontSize: 72,
                fontFamily: 'Caveat Brush',
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.fromLTRB(screenWidth*0.05, screenHeight*0.9, 0, 0),
            child: Text(
              S.of(context).pleaseregister,
              style: TextStyle(
                color: AppTheme.textColor,
                fontSize: 64,
                fontFamily: 'Caveat Brush',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(screenWidth * 0.05,screenHeight * 1.15,0,0,),
            child: loginTextFields(screenHeight, screenWidth, false,true,false), //email
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(screenWidth * 0.05,screenHeight * 1.30,0,0,
            ),
            child: loginTextFields(screenHeight, screenWidth, false,false,false), //password
          ),
    /*
           Padding(
            padding: EdgeInsets.fromLTRB(screenWidth * 0.05,screenHeight * 1.15,0,0,),
            child: loginTextFields(screenHeight, screenWidth, true,false,false), //Password
          ),
          
          Padding(
            padding: EdgeInsets.fromLTRB(screenWidth * 0.05,screenHeight * 1.30,0,0,),
            child: loginTextFields(screenHeight, screenWidth, true,false,true), // Confirm password
          ),
          */
          Padding(
            padding:  EdgeInsets.fromLTRB(screenWidth*0.05, screenHeight*1.42, 0, 0),
            child: forgotPasswordButton(S.of(context).forgotpassword),
          ),
          Padding(
            padding:  EdgeInsets.fromLTRB(screenWidth*0.6, screenHeight*1.42, 0, 0),
            child: dontHaveButton(S.of(context).donthave),),
          
          Padding(
            padding:  EdgeInsets.fromLTRB(screenWidth*0.25, screenHeight*1.55, 0, 0),
            child: GestureDetector(onTap: () {
              //Auth Yapılacak
            },
              child: sendButton(screenHeight, screenWidth, S.of(context).send),
            ),
          ),
          Padding(
            padding:  EdgeInsets.fromLTRB(0, screenHeight*1.8, 0, 0),
            child: DottedLine(
              direction: Axis.horizontal,
              lineLength: screenWidth*0.4,
              lineThickness: 1.0,
              dashLength: 7.0,
              dashColor: AppTheme.textColor,
              dashRadius: 0.0,
              dashGapLength: 4.0,
              dashGapColor: Colors.transparent,
              dashGapRadius: 0.0,
            ),
          ),
          Padding(
            padding:  EdgeInsets.fromLTRB(screenWidth*0.4, screenHeight*1.78, 0, 0),
            child: Text(S.of(context).orsigninwith,
              style: TextStyle(
                color: AppTheme.textColor,
                fontSize: 12,
                fontFamily: 'PlayfairDisplay',
              ),
            ),
          ),
           Padding(
            padding:  EdgeInsets.fromLTRB(screenWidth*0.6, screenHeight*1.8, 0, 0),
            child: DottedLine(
              direction: Axis.horizontal,
              lineLength: screenWidth*0.4,
              lineThickness: 1.0,
              dashLength: 7.0,
              dashColor: AppTheme.textColor,
              dashRadius: 0.0,
              dashGapLength: 4.0,
              dashGapColor: Colors.transparent,
              dashGapRadius: 0.0,
            ),
          ),
          Padding(
            padding:  EdgeInsets.fromLTRB(screenWidth*0.4, screenHeight*1.85, 0, 0),
            child: Image(height: screenHeight*0.2,image: AssetImage("assets/images/googleIcon.png"),),
          ),
          Padding(
            padding:  EdgeInsets.fromLTRB(screenWidth*0.2, screenHeight*1.9, screenWidth*0.2, 0),
            child: setEnglishButton(context),
          ),
          Padding(
            padding:  EdgeInsets.fromLTRB(screenWidth*0.7, screenHeight*1.9, 0, 0),
            child: setTurkishLanguageButton(context),
          ),
        ],
      ),
    );
  }
}
