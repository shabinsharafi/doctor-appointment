import 'package:doctor_app/CallScreen.dart';
import 'package:doctor_app/DoctorModel.dart';
import 'package:doctor_app/styles.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DoctorDetailsScreen extends StatefulWidget {
  const DoctorDetailsScreen(this.doctor, {super.key});

  final DoctorModel doctor;

  @override
  State<DoctorDetailsScreen> createState() => _DoctorDetailsScreenState();
}

class _DoctorDetailsScreenState extends State<DoctorDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CallScreen(),
              ));
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Styles.color.blueColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            fixedSize: Size(MediaQuery.sizeOf(context).width - 40, 55)),
        child: Text(
          "Book Now!",
          style:
              Styles.textStyle.regularTS.semiBold.copyWith(color: Colors.white),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Stack(
        children: [
          Positioned.fill(
            top: 0,
            child: Container(
              height: 180,
              color: Styles.color.blueColor,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(top: 12, left: 20, right: 20),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: AlignmentDirectional.topStart,
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          borderRadius: BorderRadius.circular(10),
                          child: Text(
                            "Back",
                            style: Styles.textStyle.regularTS.semiBold
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional.topCenter,
                        child: Text(
                          "Appointment",
                          style: Styles.textStyle.bigHeadingTS.semiBold
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: -60,
            child: Opacity(
              opacity: 0.3,
              child: Image.asset(
                "assets/white_round_pattern.png",
                width: 190,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 140),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image.network(
                          fit: BoxFit.cover,
                          widget.doctor.image,
                          alignment: Alignment.topCenter,
                          width: 80,
                          height: 85,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Dr. ${widget.doctor.name}",
                              style: Styles.textStyle.subHeadingTS.semiBold),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            widget.doctor.specialization,
                            style: Styles.textStyle.normalTS
                                .copyWith(color: Colors.grey.shade600),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.star_outlined,
                                color: Colors.amber,
                                size: 20,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(widget.doctor.rating,
                                  style: Styles.textStyle.normalTS.semiBold),
                              const SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.circle,
                                color: Colors.grey.shade700,
                                size: 5,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text("106 Reviews",
                                  style: Styles.textStyle.normalTS.semiBold
                                      .copyWith(color: Colors.black54)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        const ExpCard(
                          "547",
                          "Patients",
                        ),
                        VerticalDivider(
                          thickness: 1,
                          color: Colors.grey.shade400,
                          width: 10,
                        ),
                        const ExpCard(
                          "106",
                          "Reviews",
                        ),
                        VerticalDivider(
                          thickness: 1,
                          color: Colors.grey.shade400,
                          width: 10,
                        ),
                        const ExpCard(
                          "11",
                          "Years",
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text("Demography",
                      style: Styles.textStyle.regularTS.bold
                          .copyWith(color: Colors.black87)),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Lorem ipsum odor amet, consectetuer adipiscing elit. Habitant dui eleifend nascetur convallis scelerisque maecenas eros. Hendrerit torquent parturient adipiscing a scelerisque enim. Inceptos nibh platea vivamus dis euismod leo orci conubia fringilla. Torquent sollicitudin metus senectus, donec euismod himenaeos. Eros litora nullam consectetur morbi metus. Fringilla platea posuere velit aenean maecenas augue finibus.\n"
                    "Sollicitudin egestas posuere curae ridiculus malesuada arcu. Molestie luctus tincidunt egestas dis; aptent senectus hac efficitur. Cras fusce varius feugiat convallis nunc curabitur urna. Class mi elit pulvinar blandit dictumst? Sagittis lobortis placerat elementum diam eleifend per. Justo erat eros sem montes at maecenas mattis pulvinar.",
                    style: Styles.textStyle.normalTS
                        .copyWith(color: Colors.grey.shade900),
                    maxLines: 6,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text("Schedules",
                      style: Styles.textStyle.regularTS.bold
                          .copyWith(color: Colors.black87)),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 70,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          var date = DateTime.now().add(Duration(days: index));
                          return Container(
                            width: 55,
                            decoration: index == 2
                                ? BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    border: Border.all(
                                        color: Styles.color.blueColor,
                                        width: 1.5),
                                    color:
                                        Styles.color.blueColor.withOpacity(0.3))
                                : null,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(DateFormat('EEE').format(date),
                                    style: Styles.textStyle.normalTS.medium
                                        .copyWith(color: Colors.grey.shade700)),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text("${date.day}",
                                    style: Styles.textStyle.headingTS.semiBold
                                        .copyWith(color: Colors.black87)),
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => const SizedBox(
                              width: 7,
                            ),
                        itemCount: 15),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text("Choose Time",
                      style: Styles.textStyle.regularTS.bold
                          .copyWith(color: Colors.black87)),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 40,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          var date = DateTime.now();
                          date = date.copyWith(hour: 09 + index);
                          return Container(
                            width: 90,
                            decoration: index == 1
                                ? BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    border: Border.all(
                                        color: Styles.color.blueColor,
                                        width: 1.5),
                                    color:
                                        Styles.color.blueColor.withOpacity(0.3))
                                : null,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                    DateFormat('hh:00 a')
                                        .format(date)
                                        .toLowerCase(),
                                    style: Styles.textStyle.regularTS.semiBold
                                        .copyWith(color: Colors.black87)),
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => const SizedBox(
                              width: 7,
                            ),
                        itemCount: 7),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 1,
            right: 1,
            top: 126,
            child: Center(
              child: ClipOval(
                child: Container(
                  width: 70,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Styles.color.blueColor,
                  ),
                  child: Center(
                    child: ClipOval(
                      child: Container(
                        width: 55,
                        height: 12,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ExpCard extends StatelessWidget {
  const ExpCard(this.text1, this.text2, {super.key});

  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(text1,
              style: Styles.textStyle.subHeadingTS.semiBold
                  .copyWith(color: Colors.black87)),
          Text(text2,
              style: Styles.textStyle.normalTS.medium
                  .copyWith(color: Colors.black54)),
        ],
      ),
    );
  }
}
