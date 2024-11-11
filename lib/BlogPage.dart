import 'package:doctor_app/styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BlogPage extends StatefulWidget {
  const BlogPage({super.key});

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: IconButton(
        icon: const Icon(CupertinoIcons.back),
        style: IconButton.styleFrom(
          fixedSize: const Size(50, 40),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          backgroundColor: Colors.white54,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(bottom: Radius.circular(25)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    "https://img.freepik.com/premium-photo/covid-19-coronavirus-epidemic-anonymous-group-persons-was-seen-going-along-street-wearing-masks-generate-ai_905417-1823.jpg",
                    width: double.infinity,
                    fit: BoxFit.cover,
                    height: 250,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(Styles.dimens.screenPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Tips for fighting COVID",
                    style: Styles.textStyle.bigHeadingTS.semiBold
                        .copyWith(color: Colors.black),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      const Icon(
                        CupertinoIcons.clock,
                        color: Colors.black54,
                        size: 16,
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Text(DateFormat("dd MMM yyyy").format(DateTime.now()),
                          style: Styles.textStyle.smallTS.semiBold
                              .copyWith(color: Colors.black54)),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(
                        Icons.circle,
                        color: Colors.black26,
                        size: 7,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.black54,
                        size: 16,
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Text("317 Views",
                          style: Styles.textStyle.smallTS.semiBold
                              .copyWith(color: Colors.black54)),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    // padding:
                    //     const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(14),
                          child: Image.network(
                            fit: BoxFit.cover,
                            "https://img.freepik.com/premium-photo/portrait-man-smiling_934971-407.jpg",
                            alignment: Alignment.topCenter,
                            width: 45,
                            height: 45,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Dr. Hansi Flick",
                                style: Styles.textStyle.regularTS.semiBold),
                            const SizedBox(
                              height: 0,
                            ),
                            Text(
                              "Cardiology",
                              style: Styles.textStyle.normalTS
                                  .copyWith(color: Colors.grey.shade600),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Lorem ipsum odor amet, consectetuer adipiscing elit. Consectetur tincidunt mollis turpis accumsan aenean vivamus sem pretium proin. Ultricies massa aliquet vel dignissim neque nibh sagittis. Orci tortor torquent venenatis vehicula iaculis leo. Feugiat molestie aenean magmentum.",
                    style: Styles.textStyle.regularTS,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
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
                          bottom: 10,
                          right: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Lorem ipsum odor amet, consectetuer adipiscing elit. Cons retium proin. Ultbh sa pharetra tincidunt fermentum",
                                style: Styles.textStyle.normalTS.light
                                    .copyWith(color: Colors.white),
                                maxLines: 6,
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
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Lorem ipsum odor amet, consectetuer adipiscing elit. Consectetur tincidunt mollis turpis accumsan aenean vivamus sem pretium proin. Ultricies massa aliquet vel dignissim neque nibh sagittis. Orci tortor torquent venenatis vehicula iaculis leo. Feugiat molestie aenean magnis sociosqu dis fermentum. Mi ullamcorper ornare interdum, faucibus senectus justo. Nam lacinia mi eleifend pharetra tincidunt fermentum\n\n"
                    "Lorem ipsum odor amet, consectetuer adipiscing elit. Consectetur tincidunt mollis turpis accumsan aenean vivamus sem pretium proin. Ultricies massa aliquet vel dignissim neque nibh sagittis. Orci tortor torquent venenatis vehicula iaculis leo. Feugiat molestie aenean magnis sociosqu dis fermentum. Mi ullamcorper ornare interdum, faucibus senectus justo. Nam lacinia mi eleifend pharetra tincidunt fermentum\n\n"
                    "Lorem ipsum odor amet, consectetuer adipiscing elit. Consectetur tincidunt mollis turpis accumsan aenean vivamus sem pretium proin. Ultricies massa aliquet vel dignissim neque nibh sagittis. Orci tortor torquent venenatis vehicula iaculis leo. Feugiat molestie aenean magnis sociosqu dis fermentum. Mi ullamcorper ornare interdum, faucibus senectus justo. Nam lacinia mi eleifend pharetra tincidunt fermentum\n\n"
                    "Lorem ipsum odor amet, consectetuer adipiscing elit. Consectetur tincidunt mollis turpis accumsan aenean vivamus sem pretium proin. Ultricies massa aliquet vel dignissim neque nibh sagittis. Orci tortor torquent venenatis vehicula iaculis leo. Feugiat molestie aenean magnis sociosqu dis fermentum. Mi ullamcorper ornare interdum, faucibus senectus justo. Nam lacinia mi eleifend pharetra tincidunt fermentum\n\n"
                    "Lorem ipsum odor amet, consectetuer adipiscing elit. Consectetur tincidunt mollis turpis accumsan aenean vivamus sem pretium proin. Ultricies massa aliquet vel dignissim neque nibh sagittis. Orci tortor torquent venenatis vehicula iaculis leo. Feugiat molestie aenean magnis sociosqu dis fermentum. Mi ullamcorper ornare interdum, faucibus senectus justo. Nam lacinia mi eleifend pharetra tincidunt fermentum\n\n"
                    "Lorem ipsum odor amet, consectetuer adipiscing elit. Consectetur tincidunt mollis turpis accumsan aenean vivamus sem pretium proin. Ultricies massa aliquet vel dignissim neque nibh sagittis. Orci tortor torquent venenatis vehicula iaculis leo. Feugiat molestie aenean magnis sociosqu dis fermentum. Mi ullamcorper ornare interdum, faucibus senectus justo. Nam lacinia mi eleifend pharetra tincidunt fermentum\n\n"
                    "Lorem ipsum odor amet, consectetuer adipiscing elit. Consectetur tincidunt mollis turpis accumsan aenean vivamus sem pretium proin. Ultricies massa aliquet vel dignissim neque nibh sagittis. Orci tortor torquent venenatis vehicula iaculis leo. Feugiat molestie aenean magnis sociosqu dis fermentum. Mi ullamcorper ornare interdum, faucibus senectus justo. Nam lacinia mi eleifend pharetra tincidunt fermentum\n\n"
                    "Lorem ipsum odor amet, consectetuer adipiscing elit. Consectetur tincidunt mollis turpis accumsan aenean vivamus sem pretium proin. Ultricies massa aliquet vel dignissim neque nibh sagittis. Orci tortor torquent venenatis vehicula iaculis leo. Feugiat molestie aenean magnis sociosqu dis fermentum. Mi ullamcorper ornare interdum, faucibus senectus justo. Nam lacinia mi eleifend pharetra tincidunt fermentum\n\n",
                    style: Styles.textStyle.regularTS,
                  ),
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
