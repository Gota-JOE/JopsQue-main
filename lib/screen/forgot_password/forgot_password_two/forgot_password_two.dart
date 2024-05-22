import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../widgets/custom_elevated_button.dart';
import '../forgot_password_three/forgot_password_three.dart';

class ForgotPasswordTwo extends StatelessWidget {
  const ForgotPasswordTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 10,
              ),
            ],
          ),
          Positioned(
            top: 170,
            //MediaQuery.of(context).size.height / 2 - 200, // replace 100 with half of the image height
            left: 250,
            //MediaQuery.of(context).size.width / 2 - 100,
            child: SvgPicture.asset('assets/image/forget_password/Ellipse 812.svg'),
          ),
          Positioned(
            top: 180,
            left: 140,
            child: SvgPicture.asset('assets/image/forget_password/Ellipse 813.svg'), // big circle
          ),
          Positioned(
            top: 195,
            left: 156,
            child: SvgPicture.asset('assets/image/forget_password/Ellipse 1.svg'), // small circle
          ),
          Positioned(
            top: 213,
            left: 175,
            child:
                SvgPicture.asset('assets/image/forget_password/directbox-receive.svg'), // main SvgPicture
          ),
          Positioned(
            top: 220,
            left: 115,
            child: SvgPicture.asset('assets/image/forget_password/Ellipse 811.svg'), //left
          ),
          Positioned(
            top: 270,
            left: 275,
            child: SvgPicture.asset(
                'assets/image/forget_password/Ellipse 810.svg'), //bottom rigth
          ),
          Column(
            children: [
              SizedBox(
                height: 335,
              ),
              Center(
                child: Text('Check your Email',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF111827),
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                    'We have sent a reset password to your \nemail address',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF6B7280),
                      fontSize: 16,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                    )),
              ),
              SizedBox(
                height: 350,
              ),
              Align(
                alignment: Alignment.center,
                child: CustomElevatedButton(
                  text: 'Open email app',
                  onPressed: () {
                    Get.to(() => ForgotPasswordThree());
                  },
                  textColor: Colors.white, //Color(0xFF6B7280),
                  shapeDecorationColor: Color(0xFFD1D5DB),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
