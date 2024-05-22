import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graduated_project/model/company.dart';
import '../../widget/company_message.dart';
import '../../widget/user_message.dart';
import '../home_messsage_screen/widget/CustomTextMessage.dart';
import 'controller/chat_screen_controller.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({
    super.key,
    required this.company,
  });

  final Company company;
  final TextEditingController _messageController = TextEditingController();

  final ChatScreenController controller = Get.put(ChatScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.amber,
        centerTitle: false,
        backgroundColor: Colors.white,
        title: Row(
          // mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              maxRadius: 20,
              backgroundImage: AssetImage(company.image!),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(company.name!),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                controller.bootomSheet(context);
              },
              child: Image.asset(
                "assets/image/icons/more.png",
                width: 25,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        // padding: const EdgeInsets.only(top: 39, right: 15, left: 15),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                      child: Row(
                        // mainAxisSize: MainAxisSize.max,
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            // width: MediaQuery.of(context).size.width * 0.3,
                            child: Divider(
                              // indent: 20,
                              endIndent: 20,
                              thickness: 2,
                            ),
                          ),
                          Text(
                            "Today,  Nov 13",
                            style: TextStyle(color: Color(0xff9CA3AF)),
                          ),
                          Expanded(
                            // width: MediaQuery.of(context).size.width * 0.3,
                            child: Divider(
                              indent: 20,
                              thickness: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CompanyMessage(
                      text:
                          "Hi Rafif!, I'm Melan the selection team from Twitter. Thank you for applying for a job at our company. We have announced that you are eligible for the interview stage.",
                    ),
                    UserMessage(
                      text:
                          "Hi Melan, thank you for considering me, this is good news for me.",
                    ),
                    CompanyMessage(
                        text:
                            "Can we have an interview via google meet call today at 3pm?"),
                    UserMessage(text: "Of course, I can!"),
                    CompanyMessage(
                        text:
                            "Ok, here I put the google meet link for later this afternoon. I ask for the timeliness, thank you!"),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    child: Image.asset(
                      "assets/image/icons/paperclip.png",
                      width: 44,
                    ),
                  ),
                  SizedBox(
                      width: 230,
                      // height: 55,
                      child: CustomTextMessage(
                          messageController: _messageController,
                          onSendMessage: (message) {
                            controller.sendMessage(message);
                          })),
                  GestureDetector(
                    child: Image.asset(
                      "assets/image/icons/Microphone.png",
                      width: 44,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


