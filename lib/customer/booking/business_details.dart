import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mygame/customer/booking/booking_controller.dart';
import 'package:mygame/customer/booking/lineup.dart';
import 'package:mygame/customer/booking/time_selection.dart';
import 'package:mygame/customer/common_widgets/common_app_bar.dart';

class BusinessDetails extends StatefulWidget {
  const BusinessDetails({super.key});

  @override
  State<BusinessDetails> createState() => _BusinessDetailsState();
}

class _BusinessDetailsState extends State<BusinessDetails> {
  final BookingController _bookingController = Get.find();
  @override
  void initState() {
    _bookingController.getBusinessDetails();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: const CommonAppBar(),
      body: Obx(
        () => _bookingController.businessDeatilsLoaded.value == true
            ? SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      height: 90,
                      alignment: Alignment.topLeft,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // const Column(
                          //   children: [Icon(Icons.person), Text("500K")],
                          // ),
                          // const Spacer(),
                          Column(
                            children: [
                              Text(
                                _bookingController.singleBusinessInfo
                                        .businessData!.businessInfo!.name ??
                                    "",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Text(
                                _bookingController.singleBusinessInfo
                                        .businessData!.businessInfo!.name ??
                                    "",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.grey.shade400),
                              )
                            ],
                          ),
                          // const Spacer(),
                          // const Column(
                          //   children: [
                          //     Icon(
                          //       Icons.thumb_up,
                          //       color: Colors.red,
                          //     ),
                          //     Text("500K")
                          //   ],
                          // ),
                        ],
                      ),
                    ),
                    const Divider(
                      height: 5,
                      thickness: 5,
                      indent: 160,
                      endIndent: 160,
                    ),
                    Container(
                      height: 150,
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(5),
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (ctx, index) => Container(
                          margin: const EdgeInsets.all(5),
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                          child: InkWell(
                            onTap: () {},
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.network(
                                _bookingController
                                        .singleBusinessInfo
                                        .businessData!
                                        .businessInfo!
                                        .bannerUrl ??
                                    "https://editorial.uefa.com/resources/025c-0f8e775cc072-f99f8b3389ab-1000/the_new_tottenham_hotspur_stadium_has_an_unusual_flexible_playing_surface.jpeg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 70,
                      margin: const EdgeInsets.all(14),
                      padding: const EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: const Color.fromARGB(255, 49, 63, 91),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          // GestureDetector(
                          //   onTap: () {},
                          //   child: Container(
                          //     alignment: Alignment.center,
                          //     margin: const EdgeInsets.all(5),
                          //     height: 50,
                          //     width: 100,
                          //     decoration: BoxDecoration(
                          //       borderRadius: BorderRadius.circular(80),
                          //       color: Colors.black38,
                          //     ),
                          //     child: const Text(
                          //       "Info",
                          //       style: TextStyle(fontWeight: FontWeight.bold),
                          //     ),
                          //   ),
                          // ),
                          InkWell(
                            onTap: () {
                              Get.to(() => const LineUp(),
                                  transition: Transition.downToUp);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.all(5),
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                color: Colors.black38,
                              ),
                              child: const Text(
                                "Upcomming",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.all(5),
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(80),
                              color: Colors.black38,
                            ),
                            child: const Text(
                              "Review",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [
                          Container(
                            color: Colors.black38,
                            width: MediaQuery.of(context).size.width * .85,
                            height: 500,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      height: 50,
                                      width: MediaQuery.of(context).size.width *
                                          .85,
                                      child: const Row(
                                        children: [
                                          CircleAvatar(
                                            minRadius: 20,
                                          ),
                                          Spacer(),
                                          Column(
                                            children: [
                                              Text("Heading"),
                                              Text("SubHeading")
                                            ],
                                          ),
                                          Spacer(),
                                          Icon(Icons.more_vert)
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(20.0),
                                    child: Text(
                                        "Lorem Ipsum is simply dummy text os text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                                  ),
                                  ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(
                                        Colors.grey.withOpacity(
                                            0.5), // Semi-transparent grey color
                                      ),
                                      overlayColor: MaterialStatePropertyAll(
                                        Colors.white.withOpacity(
                                            0.2), // Color when pressed
                                      ),
                                      shape: MaterialStatePropertyAll(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {
                                      Get.to(() => TimeSelection());
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16.0, vertical: 8.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const Text(
                                            "Book",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          const SizedBox(width: 10),
                                          Container(
                                            decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.green
                                                      .withOpacity(
                                                          0.8), // Glow color
                                                  blurRadius: 8.0,
                                                  spreadRadius: 2.0,
                                                ),
                                              ],
                                            ),
                                            child: Image.asset(
                                              "assets/images/arrowGreen.png",
                                              height:
                                                  24, // Adjust the height as needed
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * .12,
                            height: 500,
                            color: const Color.fromARGB(255, 49, 63, 91),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset("assets/images/inst.png"),
                                Image.asset("assets/images/fb.png"),
                                Image.asset("assets/images/followvert.png"),
                                Image.asset("assets/images/heart.png"),
                                const SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            : const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
      ),
    );
  }
}
