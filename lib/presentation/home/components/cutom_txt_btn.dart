import 'package:flutter/material.dart';

import '../../../constants/app_texstyle/app_textstyle_const.dart';
import '../../../constants/color/color_const.dart';

class CustomTxtBtn extends StatelessWidget {
  const CustomTxtBtn({
    super.key,
    required this.ontap,
    required this.isSelected,
    required this.title,
  });
  final Function ontap;
  final bool isSelected;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap();
      },
      child: Text(
        title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.start,
        style: AppTextStyle.s16.copyWith(
          color: isSelected ? AppColor.white : AppColor.kPrimiaryText,
          fontSize: 18,
          fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
        ),
      ),
    );
  }
}
