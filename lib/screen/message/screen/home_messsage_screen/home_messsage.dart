import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:graduated_project/model/company.dart';
import 'package:graduated_project/screen/message/screen/home_messsage_screen/widget/BottomSheetItem.dart';
import 'package:graduated_project/widgets/custom_search.dart';
import '../../widget/message_items.dart';
import 'controller/home_message_screen_controller.dart';

class HomeMessageScreen extends StatelessWidget {
  HomeMessageScreen({super.key});

  HomeMessageScreenController controller =
      Get.put(HomeMessageScreenController());
  final searchController = TextEditingController().obs;
  final nameOfCompany = [
    "Twitter",
    "Gojek Indonesia",
    "Shoope",
    "Dana",
    "Slack",
    "Facebook",
  ].obs;
  final imageOfCompany = [
    "assets/image/just image/Twitter Logo.png",
    "assets/image/image Company/Gojek Logo.png",
    "assets/image/image Company/Shoope Logo.png",
    "assets/image/image Company/Dana Logo.png",
    "assets/image/image Company/Slack Logo.png",
    "assets/image/image Company/Facebook Logo.png",
  ].obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Messsages'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GetBuilder<HomeMessageScreenController>(
          init: HomeMessageScreenController(),
          builder: (controller) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomSearch(
                      searchController: controller.searchController,
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          context: context,
                          builder: (context) {
                            return Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 25, horizontal: 20),
                              height: 300,
                              child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    const Text(
                                      "Message filters",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Get.back();
                                        //Navigator.of(context).pop();
                                      },
                                      child: BottomSheetItemMessage(
                                        title: "Unread",
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Get.back();
                                        //Navigator.of(context).pop();
                                      },
                                      child: BottomSheetItemMessage(
                                        title: "Spam",
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Get.back();
                                        //Navigator.of(context).pop();
                                      },
                                      child: BottomSheetItemMessage(
                                        title: "Archived",
                                      ),
                                    ),
                                  ]),
                            );
                          },
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            // color: Colors.amber,
                            borderRadius: BorderRadius.circular(100)),
                        child: Image.asset(
                          "assets/image/icons/Filter.png",
                          height: 20,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  // height: 200,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => const Divider(
                      indent: 70,
                      endIndent: 3,
                      thickness: 1,
                    ),
                    itemCount: controller.nameOfCompany.length,
                    itemBuilder: (context, index) => MessageItems(
                      company: Company(
                          name: controller.nameOfCompany[index],
                          image: controller.imageOfCompany[index]),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
