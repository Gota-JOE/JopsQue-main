import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graduated_project/profile/screen/portfolio/portfolio_screen.dart';
import 'package:graduated_project/profile/screen/privacy_and_policy/privacy_policy_screen.dart';
import 'package:graduated_project/profile/screen/edit_profile_screen/edit_profile_screen.dart';
import 'package:graduated_project/profile/screen/help_center/help_center.dart';
import 'package:graduated_project/profile/screen/language_screen/language_screen.dart';
import 'package:graduated_project/profile/screen/login_and_security_screen.dart';
import 'package:graduated_project/profile/screen/notification_screen/notification_screen.dart';
import 'package:graduated_project/profile/screen/terms_and_conditions/terms_and_conditions_screen.dart';
import 'package:graduated_project/provider/provider.dart';

import '../../screen/login/login_screen.dart';
import '../widget/profile_item.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final TextEditingController _aboutController = TextEditingController();
  //     "I'm Rafif Dian Axelingga, I’m UI/UX Designer, I have experience designing UI Design for approximately 1 year. I am currently joining the Vektora studio team based in Surakarta, Indonesia.I am a person who has a high spirit and likes to work to achieve what I dream of.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(too),
        body: NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        SliverAppBar(
          leading: const SizedBox(),
          backgroundColor: const Color(0xffd6e4ff),
          title: const Text(
            // textAlign: TextAlign.start,
            'Profile',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black, // 2
            ),
          ),
          actions: [
            Consumer(builder: (context, ref, _) {
              return GestureDetector(
                  onTap: () {
                    ref.read(providerr).logOut();
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) =>  LoginScreen(),
                        ),
                        (route) => false);
                  },
                  child: Image.asset(
                    "assets/image/icons/logout.png",
                    width: 30,
                  ));
            }),
            const SizedBox(
              width: 10,
            )
          ],
        )
      ],
      body: SingleChildScrollView(
        child: Consumer(builder: (context, ref, _) {
          final prov = ref.watch(providerr);

          return Stack(
            children: [
              Container(
                width: double.infinity,
                height: 100,
                color: const Color(0xffd6e4ff),
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  // child: Column(
                  //   children: [
                  //     Row(
                  //       // crossAxisAlignment: CrossAxisAlignment.center,
                  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //       children: [
                  //         IconButton(
                  //           onPressed: () {},
                  //           icon: Image.asset(
                  //             "assets/image/icons/arrow-left.png",
                  //             width: 25,
                  //           ),
                  //         ),
                  //         const Text(
                  //           // textAlign: TextAlign.start,
                  //           'Profile',
                  //           style: TextStyle(
                  //             fontSize: 20,
                  //             color: Colors.black, // 2
                  //           ),
                  //         ),
                  //         IconButton(
                  //             onPressed: () {},
                  //             icon: Image.asset(
                  //               "assets/image/icons/logout.png",
                  //               width: 25,
                  //             ))
                  //       ],
                  //     ),
                  //   ],
                  // ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 24, left: 24, bottom: 30),
                    child: Column(
                      // mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        Center(
                          child: CircleAvatar(
                            radius: 45,
                            backgroundColor: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(0), // Border radius
                              child: ClipOval(
                                child: Image.asset(
                                  "assets/image/profile/Profile.png",
                                  fit: BoxFit.cover,
                                  width: 80,
                                  height: 80,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        prov.user == null
                            ? const Align(
                                alignment: Alignment.center,
                                child: CircularProgressIndicator())
                            : Column(
                                children: [
                                  Text(
                                    prov.user!.name!,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    prov.user!.bio ?? "",
                                    style: const TextStyle(
                                        fontSize: 14, color: Color(0xff6B7280)),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Applied",
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "46",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 30,
                              child: VerticalDivider(
                                color: Colors.black,
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  "Reviewed",
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "46",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 30,
                              child: VerticalDivider(
                                width: 10,
                                color: Colors.black,
                                // thickness: 2,
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  "Contacted",
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "46",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "About",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            // Spacer(),
                            GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                  isScrollControlled: true,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20))),
                                  context: context,
                                  builder: (context) {
                                    return SingleChildScrollView(
                                      child: Container(
                                        padding: EdgeInsets.only(
                                            bottom: MediaQuery.of(context)
                                                .viewInsets
                                                .bottom),
                                        // height:
                                        //     MediaQuery.of(context).size.height *
                                        //         0.5,
                                        child: Container(
                                          padding: const EdgeInsets.only(
                                              right: 15,
                                              left: 15,
                                              top: 30,
                                              bottom: 20),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              const Text(
                                                "About",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              TextField(
                                                autofocus: true,
                                                controller: _aboutController,
                                                decoration: const InputDecoration(
                                                    border:
                                                        OutlineInputBorder()),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ), // const Spacer(),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 120),
                                                child: ElevatedButton(
                                                    style: ElevatedButton.styleFrom(
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100)),
                                                        backgroundColor:
                                                            const Color(
                                                                0xff3366FF)),
                                                    onPressed: () {
                                                      setState(() {});
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    child: const Text("Save")),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: const Text(
                                "Edit",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff3366FF)),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        // TextField(
                        //   controller: _aboutController,
                        //   readOnly: true,
                        // )
                        Text(
                          _aboutController.text,
                          strutStyle: const StrutStyle(height: 1.5),
                          style: const TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(top: 10, bottom: 10, left: 20),
                    color: const Color(0xffE5E7EB),
                    width: double.infinity,
                    height: 40,
                    child: const Text(
                      "General",
                      style: TextStyle(fontSize: 16, color: Color(0xff6B7280)),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        children: [
                          ProfileItem(
                              ontap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => EditProfileScreen(),
                                ));
                              },
                              withImage: true,
                              title: "Edit Profile",
                              image: "assets/image/icons/profile.png"),
                          ProfileItem(
                              ontap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const PortfolioScreen(),
                                ));
                              },
                              withImage: true,
                              title: "Portfolio",
                              image: "assets/image/icons/Portfolio.png"),
                          ProfileItem(
                              ontap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>  LanguageScreen(),
                                ));
                              },
                              withImage: true,
                              title: "Langauge",
                              image: "assets/image/icons/global.png"),
                          ProfileItem(
                              ontap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                       NotificationEditScreen(),
                                ));
                              },
                              withImage: true,
                              title: "Notification",
                              image: "assets/image/icons/notification.png"),
                          ProfileItem(
                              ontap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      LoginAndSecurityScreen(),
                                ));
                              },
                              withImage: true,
                              title: "Login and security",
                              image: "assets/image/icons/lock.png"),
                        ],
                      )),
                  Container(
                    padding:
                        const EdgeInsets.only(top: 10, bottom: 10, left: 20),
                    color: const Color(0xffE5E7EB),
                    width: double.infinity,
                    height: 40,
                    child: const Text(
                      "Others",
                      style: TextStyle(fontSize: 16, color: Color(0xff6B7280)),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [
                        ProfileItem(
                          ontap: () {
                            //TODO what Set Here??
                          },
                          title: "Accesibility",
                        ),
                        ProfileItem(
                          ontap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>  HelpCenterScreen(),
                            ));
                          },
                          title: "Help Center",
                        ),
                        ProfileItem(
                          ontap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  const TermsAndConditionsScreen(),
                            ));
                          },
                          title: "Terms & Conditions",
                        ),
                        ProfileItem(
                          ontap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  const PrivacyAndPolicyScreen(),
                            ));
                          },
                          title: "Privacy Policy",
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          );
        }),
      ),
    ));
  }
}
