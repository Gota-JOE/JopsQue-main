import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../controller/RejectedApplicationsController.dart';

class RejectedApplyiedJop extends StatelessWidget {
  const RejectedApplyiedJop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RejectedApplicationsController controller =
    Get.put(RejectedApplicationsController());
    return Padding(
      padding: const EdgeInsets.only(top: 0, right: 15, left: 15, bottom: 200),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            "assets/image/Ilustration/rejectded Ilustration.png",
            height: 130,
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            "No applications were rejected",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            "If there is an application that is rejected by the company it will appear here",
            textAlign: TextAlign.center,
            style: TextStyle(
              // fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
          Obx(() {
            final rejectedApplications = controller.rejectedApplications.value;
            if (rejectedApplications.isEmpty) {
              return const SizedBox.shrink();
            }
            return ListView.builder(
              shrinkWrap: true,
              itemCount: rejectedApplications.length,
              itemBuilder: (context, index) {
                final application = rejectedApplications[index];
                return ListTile(
                  leading: Icon(Icons.warning),
                  title: Text(application.title),
                  subtitle: Text(application.company),
                );
              },
            );
          })
        ],
      ),
    );
  }
}