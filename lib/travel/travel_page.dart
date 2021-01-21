import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class TravelPage extends StatefulWidget {
  @override
  _TravelPageState createState() => _TravelPageState();
}

class _TravelPageState extends State<TravelPage> {
  final imgurl =
      "https://avatars.githubusercontent.com/u/54073521?s=460&u=435d63cc8d05543a9864c2d5948901294ba522b9&v=4";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.green600,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: VStack([
          VxBox().size(20, 2).white.make(),
          5.heightBox,
          VxBox().size(28, 2).white.make(),
          5.heightBox,
          VxBox().size(15, 2).white.make(),
        ]).pOnly(left: 16, top: 16),
      ),
      body: VStack([
        VxBox(
                child: [
          VxBox()
              .square(100)
              .roundedFull
              .neumorphic(
                color: Vx.green600,
                elevation: 30,
              )
              .bgImage(DecorationImage(image: NetworkImage(imgurl)))
              .make(),
          "Hi, "
              .richText
              .withTextSpanChildren(["Kaustav".textSpan.bold.make()])
              .white
              .xl2
              .make()
              .p8(),
          "Exploring the world".text.white.make(),
          VxTextField(
            borderType: VxTextFieldBorderType.none,
            borderRadius: 18,
            hint: "Search",
            fillColor: Vx.gray200.withOpacity(0.3),
            contentPaddingLeft: 13,
            autofocus: false,
            prefixIcon: Icon(
              Icons.search_outlined,
              color: Colors.white,
            ),
          )
              .customTheme(
                  themeData: ThemeData(
                brightness: Brightness.dark,
              ))
              .cornerRadius(10)
              .p16()
        ].column())
            .makeCentered(),
      ]),
    );
  }
}
