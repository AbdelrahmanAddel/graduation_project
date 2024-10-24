import 'package:flutter/material.dart';

import '../../../../core/util/app_colors.dart';
import '../../../../core/util/app_string.dart';
import '../../../../core/util/app_text_style.dart';

class ChatBotAppBar extends StatelessWidget {
  const ChatBotAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        const Icon(
          Icons.arrow_back_ios_new,
          color: AppColors.grey,
        ),
        Spacer(),
        Text(
          AppString.chat,
          style: AppTextStyle.poppins60024,
        )
      ],
    );
  }
}