import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:graduated_project/model/jops.dart';

import 'controller/jop_detail_descreption_controller.dart';

class JopDetailDescreptionScreen extends StatelessWidget {
  JopDetailDescreptionController contrroller =
      Get.put(JopDetailDescreptionController());

  JopDetailDescreptionScreen({super.key, required this.jops});

  final Jops jops;

  @override
  Widget build(BuildContext context) {
    contrroller.jopsData = jops;

    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, bottom: 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Job Description",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              contrroller.jops?.jobDescription ?? '',
              style: const TextStyle(fontSize: 13, color: Color(0xff4B5563)),
              strutStyle: const StrutStyle(height: 1.5),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "About Company",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              contrroller.jops?.jobSkill ?? '',
              strutStyle: const StrutStyle(height: 1.5),
              style: const TextStyle(fontSize: 13, color: Color(0xff4B5563)),
            ),
            // const SizedBox(
            //   height: 80,
            // )
          ],
        ),
      ),
    );
  }
}
