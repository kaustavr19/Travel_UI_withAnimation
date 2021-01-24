import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app_ui/colors.dart';
import 'package:travel_app_ui/travel/travel_page.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
            color: Vx.green600,
          ),
          Container(
            width: context.screenWidth,
            height: context.percentHeight * 80,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60),
                )),
            child: VStack([
              SvgPicture.asset(
                "assets/globe.svg",
                fit: BoxFit.cover,
                height: 250,
                width: 250,
              ).pOnly(bottom: 32, top: 60, left: 80),
              TextField(
                autofocus: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email address",
                  contentPadding: Vx.m2,
                  hintText: "xyz@email.com",
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                ),
              ).p16(),
              TextField(
                autofocus: true,
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: Vx.m2,
                  border: OutlineInputBorder(),
                  labelText: "Enter password",
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                ),
              ).p16(),
              "Forgot password?"
                  .text
                  .sm
                  .textStyle(context.captionStyle)
                  .make()
                  .objectCenterRight()
                  .p16(),
              FlatButton(
                onPressed: () {},
                child: "Log In".text.bold.make(),
                color: Coolors.orangish,
                textColor: Colors.white,
              ).wh(context.screenWidth, 48).p16()
            ]),
          ),
          Positioned(
            child: VStack(
              [
                HStack(
                  [
                    SvgPicture.asset("assets/fb.svg"),
                    5.widthBox,
                    SvgPicture.asset("assets/google.svg"),
                    5.widthBox,
                    SvgPicture.asset("assets/twitter.svg"),
                  ],
                  alignment: MainAxisAlignment.center,
                ).wFull(context),
                16.heightBox,
                "Don't have an account? "
                    .richText
                    .white
                    .center
                    .withTextSpanChildren([
                  "Sign up here!".textSpan.color(Coolors.orangish).make()
                ]).makeCentered()
              ],
              alignment: MainAxisAlignment.center,
              crossAlignment: CrossAxisAlignment.center,
            ),
            bottom: 24,
          ),
        ],
      ),
    );
  }
}
