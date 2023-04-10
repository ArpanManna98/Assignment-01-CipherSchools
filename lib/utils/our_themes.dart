import 'package:cipherschools/const/const.dart';

class CustomThemes {
  static final lightTheme = ThemeData(
    cardColor: Colors.white,
    scaffoldBackgroundColor: Color.fromARGB(255, 235, 249, 252),
    primaryColor: Vx.gray800,
    iconTheme: const IconThemeData(
      color: Vx.gray600,
    ),
  );
  static final darkTheme = ThemeData(
    cardColor: Vx.gray600,
    scaffoldBackgroundColor: Color(0xff202125),
    primaryColor: Colors.white,
    iconTheme: const IconThemeData(color: Colors.white),
  );
}
