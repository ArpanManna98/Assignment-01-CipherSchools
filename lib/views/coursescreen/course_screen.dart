import 'package:cipherschools/const/const.dart';
import 'package:cipherschools/controllers/Main_controller.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  String dropdownValue = Browse;
  String dropdownValues = "Popular";

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var controller = Get.put(MainController());

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              schoolIcon,
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            )
                .box
                .roundedFull
                .clip(Clip.antiAlias)
                // .padding(EdgeInsets.only(left: 10, bottom: 6, top: 6))
                .make(),
            2.widthBox,
            "CipherSchools".text.color(theme.primaryColor).bold.make(),
            4.widthBox,
            Icon(
              Icons.explore_outlined,
              size: 20,
              color: theme.iconTheme.color,
            ),
            DropdownButton<String>(
              dropdownColor: theme.cardColor,
              value: dropdownValue,
              items: <String>[
                Browse,
                appdev,
                webdev,
                gamedev,
                Ds,
                program,
                ML,
                DataSc,
                others
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  onTap: () {
                    print(value);
                  },
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(fontSize: 15, color: theme.primaryColor),
                  ),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
            ),
            Obx(
              () => IconButton(
                onPressed: () {
                  controller.changeTheme();
                },
                icon: Icon(
                  controller.isDark.value ? Icons.light_mode : Icons.dark_mode,
                  color: theme.iconTheme.color,
                  
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      floatingActionButton: DraggableFab(
        child: FloatingActionButton(
          backgroundColor: Colors.amberAccent.withOpacity(0.8),
          onPressed: () {
            //action after pressing this button
          },
          child: Icon(
            Icons.notifications,
            color: theme.iconTheme.color,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Container(
          child: Column(
            children: [
              // 10.heightBox,
              Container(
                // margin: EdgeInsets.only(right: 50),
                alignment: Alignment.center,
                height: 60,
                color: Colors.transparent,
                child: TextFormField(
                  style: TextStyle(color: theme.primaryColor),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.zero)),
                    filled: true,
                    fillColor: theme.cardColor,
                    hintText: "Search Courses",
                    hintStyle: TextStyle(color: theme.primaryColor),

                    // helperStyle: TextStyle(color: theme.primaryColor),
                    suffixIcon: Icon(
                      Icons.search,
                      color: theme.iconTheme.color,
                    ),
                  ),
                ),
              ),
              VxSwiper.builder(
                itemCount: course1stswipimges.length,
                aspectRatio: 16 / 9,
                autoPlay: true,
                autoPlayCurve: Curves.easeInExpo,
                height: 250,
                viewportFraction: 1.0,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Image.asset(
                        course1stswipimges[index],
                        width: double.infinity,
                        height: 400,
                        fit: BoxFit.fill,
                      ),
                      Positioned(
                        // left: context.screenWidth - 245,
                        // top: 200,
                        bottom: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            course1stsliderdesctions[index]
                                .text
                                .semiBold
                                .white
                                .size(30)
                                .make(),
                            course1stslidetags[index]
                                .text
                                .align(TextAlign.center)
                                .color(Colors.white)
                                .size(22)
                                .make()
                                .box
                                // .padding(EdgeInsets.all(5))
                                .size(150, 30)
                                .padding(EdgeInsets.all(5))
                                .withDecoration(BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white.withOpacity(0.5)))
                                // .color(Color.fromARGB(255, 248, 184, 101))
                                .make(),
                            TextButton(
                              onPressed: () {},
                              child: "Watch"
                                  .text
                                  .align(TextAlign.center)
                                  .white
                                  .size(20)
                                  .make()
                                  .box
                                  .padding(EdgeInsets.all(5))
                                  .size(100, 30)
                                  .withDecoration(BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromARGB(255, 248, 184, 101)
                                        .withOpacity(0.7),
                                  ))
                                  // .color(Color.fromARGB(255, 248, 184, 101))
                                  .make(),
                            ),
                          ],
                        )
                            .box
                            .padding(EdgeInsets.all(12))
                            .size(200, 200)
                            .withDecoration(
                              BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(0, 255, 255, 255)),
                            )
                            // .color(Color.fromARGB(255, 248, 184, 101))
                            .make(),
                      ),
                    ],
                  );
                },
              ),
              30.heightBox,
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  "Recomamded Courses"
                      .text
                      .bold
                      .color(theme.primaryColor)
                      .size(25)
                      .make(),
                  Spacer(),
                  DropdownButton<String>(
                    value: dropdownValues,
                    dropdownColor: theme.cardColor,
                    items: <String>["Popular", "Latest"]
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(
                            fontSize: 20,
                            color: theme.primaryColor,
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValues = newValue!;
                      });
                    },
                  ),
                ],
              )
                  .box
                  .padding(EdgeInsets.only(left: 10, right: 20))
                  .size(context.screenWidth, 80)
                  .make(),
              // 20.heightBox,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    course2ndswipimges.length,
                    (index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          course2ndswipimges[index],
                          width: context.screenWidth - 213,
                          height: 120,
                          fit: BoxFit.fill,
                        )
                            .box
                            // .size(150, 150)
                            .clip(Clip.antiAlias)
                            // .color(Color.fromARGB(255, 207, 199, 199))
                            // .margin(EdgeInsets.symmetric(horizontal: 4))
                            .roundedSM
                            // .padding(EdgeInsets.all(5))
                            .make(),
                        10.heightBox,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            course2ndswiptitles[index]
                                .text
                                .color(Color.fromARGB(255, 235, 155, 51))
                                .makeCentered()
                                .box
                                .color(Color.fromARGB(255, 255, 238, 218))
                                // .margin(EdgeInsets.symmetric(horizontal: 4))
                                .roundedSM
                                .padding(EdgeInsets.all(5))
                                .make(),
                            10.heightBox,
                            course2ndswipsubtitles[index]
                                .text
                                .color(theme.primaryColor)
                                .bold
                                .size(20)
                                .make(),
                            5.heightBox,
                            "No. of videos: 57"
                                .text
                                .color(theme.primaryColor)
                                .size(14)
                                .make(),
                            5.heightBox,
                            "Course time: 10.2 hours"
                                .text
                                .color(theme.primaryColor)
                                .size(14)
                                .make(),
                            10.heightBox,
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  RandomImages[index],
                                  width: 60,
                                  fit: BoxFit.cover,
                                ).box.roundedFull.clip(Clip.antiAlias).make(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    "Fun with Data \n Science.. "
                                        .text
                                        .color(theme.primaryColor)
                                        .size(15)
                                        .make(),
                                    "Instructor"
                                        .text
                                        .color(theme.primaryColor)
                                        .size(12)
                                        .make(),
                                  ],
                                ),
                              ],
                            )
                                .box
                                .size(context.screenWidth - 221, 50)
                                // .margin(EdgeInsets.only(
                                //   bottom: 10,
                                // ))
                                .make(),
                          ],
                        )
                            .box
                            .color(theme.cardColor)
                            // .margin(EdgeInsets.symmetric(horizontal: 4))
                            // .rounded
                            .padding(EdgeInsets.all(5))
                            .make(),
                      ],
                    )
                        .box
                        // .color(Color.fromARGB(255, 207, 199, 199))
                        .white
                        .margin(EdgeInsets.symmetric(horizontal: 4))
                        .rounded
                        // .padding(EdgeInsets.all(5))
                        .make(),
                  ),
                ),
              ),
              10.heightBox,
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  "All Courses"
                      .text
                      .bold
                      .color(theme.primaryColor)
                      .size(25)
                      .make(),
                ],
              )
                  .box
                  .padding(EdgeInsets.only(left: 10, right: 20))
                  .size(context.screenWidth, 80)
                  .make(),
              // 20.heightBox,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    course2ndswipimges.length,
                    (index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          course2ndswipimges[index],
                          width: context.screenWidth - 213,
                          height: 120,
                          fit: BoxFit.fill,
                        )
                            .box
                            // .size(150, 150)
                            .clip(Clip.antiAlias)
                            // .color(Color.fromARGB(255, 207, 199, 199))
                            // .margin(EdgeInsets.symmetric(horizontal: 4))
                            .roundedSM
                            // .padding(EdgeInsets.all(5))
                            .make(),
                        10.heightBox,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            course2ndswiptitles[index]
                                .text
                                .color(Color.fromARGB(255, 235, 155, 51))
                                .makeCentered()
                                .box
                                .color(Color.fromARGB(255, 255, 238, 218))
                                // .margin(EdgeInsets.symmetric(horizontal: 4))
                                .roundedSM
                                .padding(EdgeInsets.all(5))
                                .make(),
                            10.heightBox,
                            course2ndswipsubtitles[index]
                                .text
                                .color(theme.primaryColor)
                                .bold
                                .size(20)
                                .make(),
                            5.heightBox,
                            "No. of videos: 57"
                                .text
                                .color(theme.primaryColor)
                                .size(14)
                                .make(),
                            5.heightBox,
                            "Course time: 10.2 hours"
                                .text
                                .color(theme.primaryColor)
                                .size(14)
                                .make(),
                            10.heightBox,
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  RandomImages[index],
                                  width: 60,
                                  fit: BoxFit.cover,
                                ).box.roundedFull.clip(Clip.antiAlias).make(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    "Fun with Data \n Science.. "
                                        .text
                                        .color(theme.primaryColor)
                                        .size(15)
                                        .make(),
                                    "Instructor"
                                        .text
                                        .color(theme.primaryColor)
                                        .size(12)
                                        .make(),
                                  ],
                                ),
                              ],
                            )
                                .box
                                .size(context.screenWidth - 221, 50)
                                // .margin(EdgeInsets.only(
                                //   bottom: 10,
                                // ))
                                .make(),
                          ],
                        )
                            .box
                            .color(theme.cardColor)
                            // .margin(EdgeInsets.symmetric(horizontal: 4))
                            // .rounded
                            .padding(EdgeInsets.all(5))
                            .make(),
                      ],
                    )
                        .box
                        // .color(Color.fromARGB(255, 207, 199, 199))
                        .white
                        .margin(EdgeInsets.symmetric(horizontal: 4))
                        .rounded
                        // .padding(EdgeInsets.all(5))
                        .make(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
