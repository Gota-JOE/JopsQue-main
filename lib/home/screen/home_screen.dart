// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:graduated_project/home/screen/recent_jop_screen.dart';
import 'package:graduated_project/home/screen/search_screen.dart';
import 'package:graduated_project/provider/provider.dart';
import 'package:graduated_project/widgets/custom_chip.dart';

import '../../screen/notification/notification_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //List<JopsItem> jops = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.only(right: 15, left: 15),
          child: SingleChildScrollView(
            child: SafeArea(
              child: Consumer(
                builder: (context, ref, _) {
                  if (ref.watch(providerr).user == null) {
                    ref.watch(providerr).getUser();
                  }
                  return Column(children: [
                    Row(
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            ref.read(providerr).user == null
                                ? const Center(
                                    child: CircularProgressIndicator())
                                : Text(
                                    "Hi, ${ref.read(providerr).user?.name!.split(" ")[0]}👋",
                                    // "Hi, ${widget.user.name}👋",
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 24,
                                    ),
                                  ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              "Create a better future for yourself here",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xff6B7280)),
                            ),
                          ],
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () => Get.to(NotificationScreen(
                              /*Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => NotificationScreen(),*/
                              )),
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2, color: const Color(0xffD1D5DB)),
                                borderRadius: BorderRadius.circular(50)),
                            child: Image.asset(
                              "assets/image/icons/notification.png",
                              height: 25,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    GestureDetector(
                      onTap: () => Get.to(SearchScreen()),
                      child: Container(
                        padding: const EdgeInsets.only(left: 12),
                        height: 48,
                        decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xffD1D5DB)),
                            borderRadius: BorderRadius.circular(100)),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/image/icons/search-normal.png",
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            const Text(
                              "Search....",
                              style: TextStyle(color: Color(0xff9CA3AF)),
                            )
                          ],
                        ), // width: double.infinity,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      children: [
                        Text(
                          "Suggested Job",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        Spacer(),
                        Text(
                          "View all",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color(0xff3366FF)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            CustomCard(),
                          ],
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const Text(
                          "Recent  Job",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () =>
                              Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>  RecentJopScreen(),
                          )),
                          child: const Text(
                            "View all",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color(0xff3366FF)),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ref.watch(providerr).allJops.isEmpty
                        ? Column(
                            children: [
                              // SizedBox(),
                              Container(
                                  margin: const EdgeInsets.only(top: 50),
                                  child: const Center(
                                      child: CircularProgressIndicator())),
                            ],
                          )
                        : ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) =>
                                ref.watch(providerr).allJops[index],
                            separatorBuilder: (context, index) => const Divider(
                                  thickness: 1.5,
                                ),
                            itemCount: ref.watch(providerr).allJops.length)
                  ]);
                },
              ),
            ),
          )),
    );
  }
}
// : Column(
//     children: ref.watch(providerr).allJops.toList(),
//   )

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 215, //205
      width: 350,
      child: Card(
        // margin: const EdgeInsets.all(8),
        color: const Color(0xff091A7A),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/image/just image/Zoom Logo.png",
                    width: 40,
                    height: 40,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Product Designer',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Zoom • United States',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff9CA3AF)),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Image.asset('assets/image/icons/Vector.png')
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // mainAxisSize: MainAxisSize.max,
                children: [
                  CustomChip(
                    text: "Fulltime",
                    chipColor: Colors.white24,
                    textColor: Colors.white,
                  ),
                  CustomChip(
                    text: "Remote",
                    chipColor: Colors.white24,
                    textColor: Colors.white,
                  ),
                  CustomChip(
                    text: "Senior",
                    chipColor: Colors.white24,
                    textColor: Colors.white,
                  ),
                  // const Spacer(),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    "\$12K-15K",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  const Text(
                    "/Month",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.white54),
                  ),
                  const Spacer(),
                  ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100))),
                          minimumSize:
                              const MaterialStatePropertyAll(Size(96, 32))),
                      onPressed: () {},
                      child: const Text('Apply now'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
