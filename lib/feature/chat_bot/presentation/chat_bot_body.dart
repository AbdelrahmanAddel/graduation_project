import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradtion_project/core/util/app_string.dart';
import 'package:gradtion_project/core/util/app_text_style.dart';
import 'package:gradtion_project/core/util/assets.dart';

import '../../../core/util/app_colors.dart';
import 'widget/app_bar.dart';
import 'widget/custom_text_form_field.dart';

class ChatBotBody extends StatelessWidget {
  const ChatBotBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: ChatBotAppBar(),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(Assets.assetsImagePLus),
                  const SizedBox(width: 9),
                  Text(
                    AppString.iHeath,
                    style:
                        AppTextStyle.poppins60024.copyWith(fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 27),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(45),
                    topLeft: Radius.circular(45),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13.0),
                  child: Column(
                    children: [
                      SizedBox(height: 40,),
                             const Align(
                        alignment: Alignment.centerLeft,
                        child: ChatContentContainer(
                          messageColor: Colors.black,
                         color:Colors.white,
                         messageContent: AppString.botMessage,),
                      ),
                      SizedBox(height: 25),
                      const Align(
                        alignment: Alignment.centerRight,
                        child: ChatContentContainer(
                         color:Colors.green,
                         messageContent: AppString.userMessage, messageColor: Colors.white,),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 60.0),
                        child: Row(
                          children: [
                            Expanded(child: textFormField()),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ChatContentContainer extends StatelessWidget {
  const ChatContentContainer({
    super.key , required this.color, required this.messageColor, required this.messageContent,
  });
final Color color;
 final Color ?messageColor;
final String messageContent;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 223,
      height: 110,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            blurRadius: 25,
            offset: Offset(0, 6)

          )
        ],
        borderRadius: BorderRadius.circular(16),
        color: color
      ),
      child:  Padding(
        padding: const EdgeInsets.only( top: 18.0,bottom: 8,left: 8 ,right: 8),
        child: Expanded(child: Text(messageContent,style: AppTextStyle.poppins40014.copyWith(color: messageColor),textAlign: TextAlign.center,maxLines: 3,overflow: TextOverflow.ellipsis,)),
      ),
    );
  }
}




