import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:graduated_project/screen/notification/widget/notification_item_widget.dart';

import 'controller/notification_controller.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key});

  final notificationController = Get.put(NotificationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notification"),
      ),
      body: SingleChildScrollView(
        child: GetBuilder<NotificationController>(
          init: notificationController,
          builder: (controller) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 4, bottom: 4, left: 20),
                  color: const Color.fromARGB(255, 234, 234, 236),
                  width: double.infinity,
                  height: 30,
                  child: const Text(
                    "New",
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff6B7280),
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.left,
                  ),
                ),
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => NotificationItem(
                    titile: controller.notificationTilesn[index],
                    subTitile: controller.notificationSubtilesn[index],
                    image: controller.notificationImagesn[index],
                  ),
                  separatorBuilder: (context, index) => const Divider(
                    thickness: 1.2,
                  ),
                  itemCount: controller.notificationTilesn.length,
                ),
                Container(
                  padding: const EdgeInsets.only(top: 4, bottom: 4, left: 20),
                  color: const Color.fromARGB(255, 234, 234, 236),
                  width: double.infinity,
                  height: 30,
                  child: const Text(
                    "Yesterday",
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff6B7280),
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.left,
                  ),
                ),
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => NotificationItem(
                    titile: controller.notificationTilesy[index],
                    subTitile: controller.notificationSubtilesy[index],
                    image: controller.notificationImagesy[index],
                  ),
                  separatorBuilder: (context, index) => const Divider(
                    thickness: 1.2,
                  ),
                  itemCount: controller.notificationTilesy.length,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}


/*class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key});

  List notificationTilesn = [
    "Dana,",
    "Shoope,",
    "Slack,",
    "Facebook,",
  ];
  List notificationSubtilesn = [
    "Posted new design jobs,",
    "Posted new design jobs,",
    "Posted new design jobs,",
    "Posted new design jobs,",
  ];

  List notificationImagesn = [
    "assets/image/image Company/Dana Logo.png",
    "assets/image/image Company/Shoope Logo.png",
    "assets/image/image Company/Slack Logo.png",
    "assets/image/image Company/Facebook Logo.png",
  ];
  List notificationTilesy = [
    "setup,",
    "Welcome to Jobsque,",
  ];
  List notificationSubtilesy = [
    "Your email setup was successful with the following details: Your new email is rafifdianganz@gmail.com.",
    "Hello Rafif Dian Axelingga, thank you for registering Jobsque. Enjoy the various features that....",
  ];
  List notificationImagesy = [
    "assets/image/icons/Email.png",
    "assets/image/icons/Jobsque Logo.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notification"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 4, bottom: 4, left: 20),
              color: const Color.fromARGB(255, 234, 234, 236),
              width: double.infinity,
              height: 30,
              child: const Text(
                "New",
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff6B7280),
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.left,
              ),
            ),
            ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shrinkWrap: true,
                itemBuilder: (context, index) => NotificationItem(
                    titile: notificationTilesn[index],
                    subTitile: notificationSubtilesn[index],
                    image: notificationImagesn[index]),
                separatorBuilder: (context, index) => const Divider(
                      thickness: 1.2,
                    ),
                itemCount: notificationTilesn.length),
            // const SizedBox(
            //   height: 20,
            // ),
            Container(
              padding: const EdgeInsets.only(top: 4, bottom: 4, left: 20),
              color: const Color.fromARGB(255, 234, 234, 236),
              width: double.infinity,
              height: 30,
              child: const Text(
                "Yesterday",
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff6B7280),
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.left,
              ),
            ),
            ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shrinkWrap: true,
                itemBuilder: (context, index) => NotificationItem(
                    titile: notificationTilesy[index],
                    subTitile: notificationSubtilesy[index],
                    image: notificationImagesy[index]),
                separatorBuilder: (context, index) => const Divider(
                      thickness: 1.2,
                    ),
                itemCount: notificationTilesy.length),
          ],
        ),
      ),
    );
  }
}*/

/*class NotificationItem extends StatelessWidget {
  const NotificationItem({
    super.key,
    required this.titile,
    required this.subTitile,
    required this.image,
  });

  final String titile;
  final String subTitile;
  final String image;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          // radius: 80,

          child: Image.asset(
            image,
            height: 40,
          )),
      title: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: Text(
          titile,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ),
      subtitle: Text(subTitile,
          maxLines: 2,
          style: const TextStyle(
            overflow: TextOverflow.ellipsis,
            fontSize: 12,
          )),
      trailing: const Row(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "•",
            style: TextStyle(fontSize: 50, color: Color(0xffDBB40E)),
          ),
          Text(
            " 10.00AM",
            style: TextStyle(fontSize: 12, color: Color(0xff6B7280)),
          )
        ],
      ),
    );
  }
}*/
