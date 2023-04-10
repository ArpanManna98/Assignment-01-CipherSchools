import 'package:cipherschools/const/const.dart';
import 'package:cipherschools/common_widget/our_button.dart';
import 'package:flutter/services.dart';

Widget exitDialog(context) {
  return Dialog(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        "Confirm".text.bold.size(18).color(Colors.black).make(),
        Divider(),
        10.heightBox,
        "Are you sure want to exit?"
            .text
            .bold
            .size(18)
            .color(Colors.black)
            .make(),
        10.heightBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ourButton(
              color: Color.fromARGB(255, 235, 155, 51),
              textColor: Colors.white,
              title: "Yes",
              onPress: () {
                SystemNavigator.pop();
              },
            ),
            ourButton(
              color: Color.fromARGB(255, 235, 155, 51),
              textColor: Colors.white,
              title: "No",
              onPress: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ],
    )
        .box
        .color(
          Color.fromARGB(188, 236, 245, 232),
        )
        .padding(EdgeInsets.all(12))
        .roundedSM
        .make(),
  );
}
