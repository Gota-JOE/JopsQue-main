import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:graduated_project/model/jops.dart';

import 'controller/jops_company_controller.dart';

class JopDetailCompanyScreen extends StatelessWidget {
  final JopsController jopsCtrl = Get.put(JopsController());

  JopDetailCompanyScreen({super.key, required this.jops});

  final Jops jops;

  @override
  Widget build(BuildContext context) {
    jopsCtrl.jopsData = jops;

    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Contact US",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 13,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(left: 10),
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: const Color(0xffD1D5DB),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "Email",
                          style:
                          TextStyle(fontSize: 13, color: Color(0xff6B7280)),
                        ),
                        // SizedBox(
                        //   height: 2,
                        // ),
                        Text(
                          jopsCtrl.jops?.compEmail ?? '',
                          //jops.compEmail,
                          style: const TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(left: 10),
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: const Color(0xffD1D5DB),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "Website",
                          style:
                          TextStyle(fontSize: 13, color: Color(0xff6B7280)),
                        ),
                        // SizedBox(
                        //   height: 2,
                        // ),
                        Text(
                          jopsCtrl.jops?.compWebsite ?? '',
                          //jops.compWebsite,
                          style: const TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              "About Company",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              jopsCtrl.jops?.aboutComp ?? '',

              //jops.aboutComp,
              strutStyle: const StrutStyle(height: 1.5),
              style: const TextStyle(fontSize: 13, color: Color(0xff4B5563)),
            ),
            const SizedBox(
              height: 80,
            )
          ],
        ),
      ),
    );
  }
}