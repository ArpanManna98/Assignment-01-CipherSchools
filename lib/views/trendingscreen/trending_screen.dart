import 'package:cipherschools/const/const.dart';
class TrendingScreen extends StatelessWidget {
  const TrendingScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Center(
            child: "SORRY WE ARE WORKING IN THIS PAGE"
                .text
                .size(50)
                .color(Colors.amberAccent)
                .makeCentered())
        ));
  }
}