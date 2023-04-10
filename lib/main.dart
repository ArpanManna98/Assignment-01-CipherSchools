import 'package:cipherschools/const/const.dart';
import 'package:cipherschools/utils/our_themes.dart';
import 'package:cipherschools/views/homescreen/home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "CipherSchool",
      theme: CustomThemes.lightTheme,
      darkTheme: CustomThemes.darkTheme,
      themeMode: ThemeMode.system,
      home: Home(),
    );
  }
}