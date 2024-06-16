
import 'package:flutter/material.dart';
import 'package:lemonhivetask/utils/text_containner.dart';

import 'image_container.dart';

class DashboardTextImageContainer  {
  ImageContainer imageContainer =ImageContainer();
  TextContainer textContainer = TextContainer();

  Widget dashboardTextImageContainer({
    required BuildContext context,
    required double firstSpaceSpace,
    required double mainContainerHeight,
    required double mainContainerWidth,
    required String imageString,
    required bool isNetworkImage,
    required double imageContainerHeight,
    required double imageContainerWidth,
    required BoxFit imageBoxFit,
    required double imageAndTextSpace,
    required double textContainerHeight,
    required double textContainerWidth,
    required String textString,
    required Alignment textContainerAlignment,
    required double textStringSize,
    required Color textStringColor,
    required Color containerColor,
    required double containerBorderRadius,
    required Color boxShadowColor,
    required Offset boxShadowoffset,
    required double boxShadowspreadRadius,
    required double boxShadowblurRadius,
    required TextAlign textStringAlign,
    required FontWeight textStringWeight,
    required FontStyle textStringStyle,
  }) {
    return Container(
      height: MediaQuery.of(context).size.height / mainContainerHeight,
      width: MediaQuery.of(context).size.width / mainContainerWidth,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(containerBorderRadius),
        boxShadow: [
          // BoxShadow(
          //   color: boxShadowColor,
          //   offset: boxShadowoffset,
          //   blurRadius: boxShadowblurRadius,
          //   spreadRadius: boxShadowspreadRadius,
          // ),
          BoxShadow(
            spreadRadius: 0,
            blurRadius: 31,
            offset: Offset(0, -10),
            color: Color.fromRGBO(0, 0, 0, 0.13),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: firstSpaceSpace,
          ),
          imageContainer.imageContainer(
              context: context,
              imageHeight: imageContainerHeight,
              imageWidth: imageContainerWidth,
              isNetworkImage: isNetworkImage,
              imagePath: imageString,
              imageBoxFit: imageBoxFit
          ),
          SizedBox(
            width: imageAndTextSpace,
          ),
          textContainer.textContainer(
              context: context,
              textContainerHeight: textContainerHeight,
              textContainerWidth: textContainerWidth,
              textContainerAlignment: textContainerAlignment,
              textContainerString: textString,
              textContainerTextAlignment: textStringAlign,
              textContainerFontSize: textStringSize,
              textContainerFontColor: textStringColor,
              textContainerFontWeight: textStringWeight,
              textContainerFontStyle: textStringStyle
          ),
        ],
      ),
    );
  }
}
