import 'package:cipherschools/const/const.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                    Icons.segment,
                    size: 30,
                    color: Colors.black,
                  ))
            ],
          ),
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Container(
            child: Column(
              children: [
                70.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    "Welcome to".text.color(Colors.black).bold.size(50).make(),
                    10.widthBox,
                    "the"
                        .text
                        .color(Color.fromARGB(255, 235, 155, 51))
                        .bold
                        .size(50)
                        .make(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    "Future"
                        .text
                        .color(Color.fromARGB(255, 235, 155, 51))
                        .bold
                        .size(40)
                        .make(),
                    10.widthBox,
                    "of Learning!"
                        .text
                        .color(Colors.black)
                        .bold
                        .size(40)
                        .make(),
                  ],
                ),
                45.heightBox,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    "Start Learning by best creators for"
                        .text
                        .color(Color.fromARGB(255, 134, 131, 132))
                        .size(26)
                        .make()
                        .box
                        .size(400, 30)
                        .padding(EdgeInsets.only(left: 5))
                        .make(),
                    10.heightBox,
                    "absolutely Free "
                        .text
                        .color(Color.fromARGB(255, 235, 155, 51))
                        .size(26)
                        .make(),
                  ],
                ),
                30.heightBox,
                Row(
                  children: [
                    Card(
                      color: Colors.white,
                      elevation: 1.0,
                      child: Container(
                        padding: EdgeInsets.all(12),
                        // width: context.screenWidth - 210,
                        width: 210,
                        height: 80,
                        // color: Colors.black,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                for (int i = 0; i < RandomImages.length; i++)
                                  Container(
                                    margin: EdgeInsets.symmetric(vertical: 0),
                                    child: Align(
                                      widthFactor: 0.5,
                                      child: CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Colors.white,
                                        child: CircleAvatar(
                                            radius: 28,
                                            backgroundColor: Colors.white,
                                            child: Image.asset(
                                              RandomImages[i],
                                              fit: BoxFit.cover,
                                            )
                                                .box
                                                .roundedFull
                                                .clip(Clip.antiAlias)
                                                .make()
                                            // backgroundImage: NetworkImage(
                                            //   RandomImages[i],

                                            // ),
                                            ),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                "50+"
                                    .text
                                    .color(Colors.black)
                                    .size(18)
                                    .bold
                                    .make(),
                                "Mentors"
                                    .text
                                    .color(Color.fromARGB(255, 134, 131, 132))
                                    .size(18)
                                    .make(),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      elevation: 1.0,
                      child: Container(
                        padding: EdgeInsets.only(top: 15),
                        // width: context.screenWidth - 220,
                        width: 185,
                        height: 80,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            "4.8/5"
                                .text
                                .color(Colors.black)
                                .size(18)
                                .bold
                                .make(),
                            Row(
                              children: [
                                VxRating(
                                  value: 4.5,
                                  onRatingUpdate: (value) {},
                                  normalColor:
                                      Color.fromARGB(255, 148, 137, 137),
                                  selectionColor:
                                      Color.fromARGB(255, 235, 155, 51),
                                  count: 5,
                                  size: 20,
                                  maxRating: 5,
                                  isSelectable: false,
                                ),
                                "Ratings"
                                    .text
                                    .color(Color.fromARGB(255, 134, 131, 132))
                                    .size(18)
                                    .make(),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                50.heightBox,
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 235, 155, 51)),
                  width: context.screenWidth - 100,
                  height: 80,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      "Start Learning Now"
                          .text
                          .color(Colors.white)
                          .size(26)
                          .make(),
                      10.widthBox,
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      )
                    ],
                  ),
                ).onTap(() {}),
                40.heightBox,
                VxSwiper.builder(
                    aspectRatio: 16 / 9,
                    autoPlay: true,
                    height: 380,
                    viewportFraction: 0.7,
                    enlargeCenterPage: true,
                    itemCount: Titles.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 380,
                        width: context.screenWidth - 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 2, 3, 39).withOpacity(0.9),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            25.heightBox,
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.psychology,
                                  color: Color.fromARGB(255, 235, 155, 51),
                                  size: 70,
                                ).box.roundedFull.white.make(),
                                Spacer(),
                                // "Free"
                                //     .text
                                //     .color(Colors.white)
                                //     .bold
                                //     .makeCentered()
                                //     .box
                                //     .padding(EdgeInsets.only(left: 20))
                                //     .withDecoration(BoxDecoration(
                                //         borderRadius: BorderRadius.circular(15),
                                //         color: (Color.fromARGB(
                                //             255, 235, 155, 51))))
                                //     .size(100, 45)
                                //     .make(),
                                Image.asset(
                                  freepic,
                                  height: 100,
                                  width: 100,
                                )
                                    .box
                                    .padding(EdgeInsets.only(
                                        left: 10, bottom: 5, top: 5, right: 0))
                                    .make()
                              ],
                            )
                                .box
                                .size(context.screenWidth - 140, 80)
                                .padding(EdgeInsets.only(left: 10))
                                .make(),
                            10.heightBox,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Titles[index]
                                    .text
                                    .color(Colors.white)
                                    .size(38)
                                    .bold
                                    .make(),
                                10.heightBox,
                                Descriptions[index]
                                    .text
                                    .color(Colors.white)
                                    .size(23)
                                    .make(),
                              ],
                            )
                                .box
                                .padding(EdgeInsets.only(left: 10, right: 10))
                                .make(),
                          ],
                        ),
                      );
                    }),
              ],
            ),
          ),
        ));
  }
}
