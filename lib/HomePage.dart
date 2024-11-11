import 'package:doctor_app/BlogPage.dart';
import 'package:doctor_app/DoctorDetailsScreen.dart';
import 'package:doctor_app/styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'DoctorModel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var doctorList = [
    DoctorModel("Mary Jane", "Neurologist", "4.2",
        "https://thumb.photo-ac.com/4c/4c3cf8003a40a0a7d839a41bde520fb3_t.jpeg"),
    DoctorModel("Micheal", "Orthopedics", "4.5",
        "https://img.freepik.com/premium-photo/portrait-man-smiling_934971-407.jpg"),
    DoctorModel("Christina", "Dermatologist", "4.6",
        "https://img.freepik.com/premium-photo/woman-tan-suit-stands-front-gray-background_662214-117950.jpg?w=360"),
    DoctorModel("David John", "General Medicine", "4.3",
        "https://img.freepik.com/premium-photo/realistic-portrait-smiling-30yearold-man_1279815-44941.jpg?w=360"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            color: Colors.black87,
            boxShadow: const [
              BoxShadow(
                  color: Colors.black12, blurRadius: 20, offset: Offset(1, 2))
            ],
            borderRadius: BorderRadius.circular(25)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
          child: GNav(
            rippleColor: Styles.color.primaryColor.withOpacity(0.1),
            hoverColor: Styles.color.primaryColor.withOpacity(0.1),
            gap: 8,
            activeColor: Styles.color.primaryColor,
            iconSize: 24,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: const Duration(milliseconds: 400),
            tabBackgroundColor: Styles.color.secondaryColor,
            color: Colors.white54,
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.book_rounded,
                text: 'Bookings',
              ),
              GButton(
                icon: Icons.featured_play_list_rounded,
                text: 'Reports',
              ),
              GButton(
                icon: Icons.settings,
                text: 'Settings',
              ),
            ],
            selectedIndex: 0,
            onTabChange: (index) {
              setState(() {
                // current = index;
              });
            },
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Colors.black87,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(25))),
              padding: EdgeInsets.only(
                  top: MediaQuery.paddingOf(context).top + 15,
                  bottom: 25,
                  left: 20,
                  right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Good Morning!",
                              style: Styles.textStyle.normalTS
                                  .copyWith(color: Colors.white)),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "John Miller",
                            style: Styles.textStyle.bigHeadingTS.bold
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                          "https://www.aragon.ai/_next/image?url=%2F_next%2Fstatic%2Fmedia%2F8b.4f9dc09a.jpeg&w=640&q=100",
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade200),
                    child: Row(
                      children: [
                        const Icon(Icons.search),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Search doctors/hospitals",
                          style: Styles.textStyle.normalTS.light,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(Styles.dimens.screenPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BlogPage(),
                          ));
                    },
                    child: Container(
                      width: MediaQuery.sizeOf(context).width,
                      height: 160,
                      // padding: const EdgeInsets.only(left: 10, top: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Styles.color.blueColor),
                      child: Stack(
                        children: [
                          Positioned.fill(
                              child: Opacity(
                            opacity: 0.3,
                            child: Image.asset(
                              "assets/cont.png",
                              fit: BoxFit.fill,
                              color: Colors.white,
                            ),
                          )),
                          Positioned(
                            left: 10,
                            top: 10,
                            right: 150,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Dr. Hansi Flick",
                                  style: Styles.textStyle.normalTS.medium
                                      .copyWith(color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Tips for fighting COVID",
                                  style: Styles.textStyle.bigHeadingTS.semiBold
                                      .copyWith(color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 13,
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.remove_red_eye_outlined,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                    const SizedBox(
                                      width: 3,
                                    ),
                                    Text("317 Views",
                                        style: Styles.textStyle.smallTS.semiBold
                                            .copyWith(color: Colors.white)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              "assets/mask_girl.png",
                              width: 150,
                              height: 150,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Text(
                        "Health Insights",
                        style: Styles.textStyle.regularTS.bold,
                      ),
                      const Spacer(),
                      Text(
                        "See All",
                        style: Styles.textStyle.smallTS.semiBold
                            .copyWith(color: Colors.black54),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        Container(
                          width: 140,
                          // padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Styles.color.accentColor),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    Text("Heart Rate",
                                        style: Styles.textStyle.smallTS.semiBold
                                            .copyWith(color: Colors.white)),
                                    const Spacer(),
                                    const Icon(
                                      CupertinoIcons.heart_fill,
                                      color: Colors.white70,
                                      size: 18,
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 1,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    Text("97",
                                        style: Styles
                                            .textStyle.subHeadingTS.extraBold
                                            .copyWith(color: Colors.white)),
                                    const SizedBox(
                                      width: 3,
                                    ),
                                    Text("bpm",
                                        style: Styles.textStyle.smallTS.semiBold
                                            .copyWith(color: Colors.white70)),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              AspectRatio(
                                aspectRatio: 1.6,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      // right: 18,
                                      // left: 12,
                                      // top: 24,
                                      // bottom: 12,
                                      ),
                                  child: LineChart(
                                    mainData(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 140,
                          // padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Styles.color.secondaryColor),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    Text("Pressure",
                                        style: Styles.textStyle.smallTS.semiBold
                                            .copyWith(color: Colors.white)),
                                    const Spacer(),
                                    const Icon(
                                      CupertinoIcons.graph_circle_fill,
                                      color: Colors.white70,
                                      size: 18,
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 1,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    Text("120/80",
                                        style: Styles
                                            .textStyle.subHeadingTS.extraBold
                                            .copyWith(color: Colors.white)),
                                    const SizedBox(
                                      width: 3,
                                    ),
                                    Text("mm Hg",
                                        style: Styles.textStyle.smallTS.semiBold
                                            .copyWith(color: Colors.white70)),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              AspectRatio(
                                aspectRatio: 1.6,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      // right: 18,
                                      // left: 12,
                                      // top: 24,
                                      // bottom: 12,
                                      ),
                                  child: BarChart(
                                    barData(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 140,
                          // padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Styles.color.blueColor),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    Text("Steps",
                                        style: Styles.textStyle.smallTS.semiBold
                                            .copyWith(color: Colors.white)),
                                    const Spacer(),
                                    const Icon(
                                      CupertinoIcons.heart_fill,
                                      color: Colors.white70,
                                      size: 18,
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 1,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    Text("1500",
                                        style: Styles
                                            .textStyle.subHeadingTS.extraBold
                                            .copyWith(color: Colors.white)),
                                    const SizedBox(
                                      width: 3,
                                    ),
                                    Text("",
                                        style: Styles.textStyle.smallTS.semiBold
                                            .copyWith(color: Colors.white70)),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              AspectRatio(
                                aspectRatio: 1.6,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      // right: 18,
                                      // left: 12,
                                      // top: 24,
                                      // bottom: 12,
                                      ),
                                  child: LineChart(
                                    mainData(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "Top Doctors",
                        style: Styles.textStyle.regularTS.bold,
                      ),
                      const Spacer(),
                      Text(
                        "See All",
                        style: Styles.textStyle.smallTS.semiBold
                            .copyWith(color: Colors.black54),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ListView.separated(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      DoctorDetailsScreen(doctorList[index]),
                                ));
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(18),
                                  child: Image.network(
                                    fit: BoxFit.cover,
                                    doctorList[index].image,
                                    alignment: Alignment.topCenter,
                                    width: 55,
                                    height: 60,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Dr. ${doctorList[index].name}",
                                        style: Styles
                                            .textStyle.regularTS.semiBold),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      doctorList[index].specialization,
                                      style: Styles.textStyle.normalTS.copyWith(
                                          color: Colors.grey.shade600),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Icon(
                                  Icons.star_outlined,
                                  color: Colors.amber,
                                  size: 20,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(doctorList[index].rating,
                                    style: Styles.textStyle.normalTS.semiBold),
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => const SizedBox(
                            height: 10,
                          ),
                      itemCount: doctorList.length),
                  const SizedBox(
                    height: 90,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: const FlGridData(
        show: false,
      ),
      titlesData: const FlTitlesData(
        show: false,
      ),
      borderData: FlBorderData(
        show: false,
      ),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ],
          isCurved: true,
          gradient: const LinearGradient(
            colors: [
              Colors.white,
              Colors.white,
            ],
          ),
          barWidth: 2,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white60,
                Colors.white10,
              ],
            ),
          ),
        ),
      ],
    );
  }

  BarChartData barData() {
    return BarChartData(
      gridData: const FlGridData(
        show: false,
      ),
      titlesData: const FlTitlesData(
        show: false,
      ),
      borderData: FlBorderData(
        show: false,
      ),
      minY: 0,
      maxY: 20,
      barGroups: [
        makeGroupData(0, 12, 10),
        makeGroupData(1, 14, 12),
        makeGroupData(2, 12, 8),
        makeGroupData(3, 16, 13),
        makeGroupData(4, 17, 12),
        makeGroupData(5, 19, 14),
        makeGroupData(6, 10, 7),
      ],
    );
  }

  BarChartGroupData makeGroupData(int x, double y1, double y2) {
    return BarChartGroupData(
      barsSpace: 2,
      x: x,
      barRods: [
        BarChartRodData(toY: y1, color: Colors.white70, width: 4.5),
        /*
        BarChartRodData(
          toY: y1,
          color: Colors.transparent,
          width: 3,
        ),*/
        BarChartRodData(
          toY: y2,
          color: Colors.white70,
          width: 4.5,
        ),
      ],
    );
  }
}
