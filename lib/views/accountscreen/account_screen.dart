import 'package:cipherschools/const/const.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Image.asset(
            schoolIcon,
            fit: BoxFit.fill,
          )
              .box
              .roundedFull
              .padding(EdgeInsets.only(left: 10, bottom: 6, top: 6))
              .make(),
          title: Row(
            mainAxisSize: MainAxisSize.max,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              "CipherSchools".text.black.bold.make(),
              Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.tune,
                    size: 30,
                    color: Colors.black,
                  ))
            ],
          ),
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: Center(
            child: "SORRY WE ARE WORKING IN THIS PAGE"
                .text
                .size(50)
                .color(Colors.amberAccent)
                .makeCentered()));
  }
}
