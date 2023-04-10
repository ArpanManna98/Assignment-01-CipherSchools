import 'package:cipherschools/common_widget/exit_dialog.dart';
import 'package:cipherschools/const/const.dart';
import 'package:cipherschools/controllers/home_controller.dart';
import 'package:cipherschools/views/accountscreen/account_screen.dart';
import 'package:cipherschools/views/coursescreen/course_screen.dart';
import 'package:cipherschools/views/homescreen/home_screen.dart';
import 'package:cipherschools/views/trendingscreen/trending_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    var controller = Get.put(HomeController());
    var navbarItem = [
      BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
          size: 26,
          color: theme.iconTheme.color,
        ),
        label: "Home",
      ),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.menu_book,
            size: 26,
          ),
          label: "Courses"),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.explore,
            size: 26,
          ),
          label: "Trending"),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            size: 26,
          ),
          label: "My Profile"),
    ];

    var navBody = [
      HomeScreen(),
      CourseScreen(),
      TrendingScreen(),
      AccountScreen(),
    ];
    return WillPopScope(
      onWillPop: () async {
        showDialog(
            context: context,
            builder: (context) => exitDialog(context),
            barrierDismissible: false);
        return false;
      },
      child: Scaffold(
        extendBody: true,
        body: Column(
          children: [
            Obx(() => Expanded(
                child: navBody.elementAt(controller.currentNavIndex.value))),
          ],
        ),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            // elevation: 0,
            // backgroundColor: Color(0x00ffffff),

            items: navbarItem,
            currentIndex: controller.currentNavIndex.value,
            selectedItemColor: Color.fromARGB(255, 255, 118, 64),
            unselectedItemColor: theme.primaryColor,
            unselectedLabelStyle: TextStyle(color: theme.primaryColor),
            // selectedLabelStyle: TextStyle(fontFamily: bold),
            type: BottomNavigationBarType.fixed,
            // backgroundColor: Colors.white.withOpacity(0.85),
            backgroundColor: theme.scaffoldBackgroundColor.withOpacity(0.8),
            onTap: (value) {
              controller.currentNavIndex.value = value;
            },
          ),
        ),
      ),
    );
  }
}
