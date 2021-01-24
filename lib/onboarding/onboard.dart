import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:velocity_x/velocity_x.dart';

import '../colors.dart';

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
            color: Coolors.purplish,
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
                "assets/diary.svg",
                fit: BoxFit.cover,
                height: 250,
                width: 250,
              ).pOnly(top: 100, bottom: 32, left: 80),
              "Immortalize your Travels"
                  .text
                  .center
                  .extraBlack
                  .xl3
                  .makeCentered(),
              8.heightBox,
              "Write down your travel stories and reminiscence whenver you want."
                  .text
                  .gray500
                  .medium
                  .center
                  .makeCentered()
                  .p16()
            ]),
          ),
          Positioned(
            child: Container(
              height: context.percentHeight * 15,
              child: VStack(
                [
                  HStack(
                    [
                      VxBox().square(5).gray500.roundedFull.make(),
                      10.widthBox,
                      VxBox().square(8).white.roundedFull.make(),
                      10.widthBox,
                      VxBox().square(5).gray500.roundedFull.make(),
                    ],
                    alignment: MainAxisAlignment.center,
                  ).wFull(context),
                  16.heightBox,
                  Spacer(),
                  ButtonBar(
                    mainAxisSize: MainAxisSize.max,
                    alignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlatButton(
                        onPressed: () {},
                        child: "Skip".text.white.make(),
                      ),
                      [
                        FlatButton(
                          onPressed: () {},
                          child: "Next".text.white.make(),
                        ).px2(),
                        SvgPicture.asset(
                          "assets/next.svg",
                        )
                      ].hStack()
                    ],
                  )
                ],
                alignment: MainAxisAlignment.start,
              ).wFull(context),
            ),
            bottom: 24,
          ),
        ],
      ),
    );
  }
}
