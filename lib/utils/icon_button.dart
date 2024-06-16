

import 'package:flutter/material.dart';
import 'package:lemonhivetask/utils/text_containner.dart';

class IconButtonWidget  {

  TextContainer textContainer =TextContainer();

  Widget iconButtonWidget({
    required BuildContext context,
    required double iconButtonContainerHeight,
    required double iconButtonContainerWidth,
    required Function() iconButtonContainerOnPress,
    required IconData iconButtonContainerIcon,
    required double iconButtonContainerIconSized,
    required Color iconButtonContainerIconColor,
  }){
    return SizedBox(
      height: MediaQuery.of(context).size.height / iconButtonContainerHeight,
      width: MediaQuery.of(context).size.width / iconButtonContainerWidth,
      child: IconButton(
        style: IconButton.styleFrom(padding: EdgeInsets.zero),
        onPressed: iconButtonContainerOnPress,
        icon: Icon(iconButtonContainerIcon),
        iconSize: iconButtonContainerIconSized,
        color: iconButtonContainerIconColor,
      ),
    );
  }

  Widget bottomNavigationIconButton({
    required BuildContext context,
    required double mainContainerHeight,
    required double mainContainerWidth,
    required Color mainContainerColor,
    required double mainContainerRadius,
    required Function() iconButtonOnPress,
    required String imageString,
    required double imageHeight,
    required double imageWidth,
    required BoxFit imageBoxFit,
    required double textContainerHeight,
    required double textContainerWidth,
    required Alignment textContainerAlignment,
    required String textContainerString,
    required TextAlign textContainerTextAlignment,
    required double textContainerFontSize,
    required Color textContainerFontColor,
    required FontWeight textContainerFontWeight,
    required FontStyle textContainerFontStyle
  }) {
    return Container(
      height: MediaQuery.of(context).size.height / mainContainerHeight,
      width: MediaQuery.of(context).size.width / mainContainerWidth,
      decoration: BoxDecoration(
        color: mainContainerColor,
        borderRadius: BorderRadius.circular(mainContainerRadius),
      ),
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height / 170,
        horizontal: MediaQuery.of(context).size.width / 80,
      ),
      child: TextButton(
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        onPressed: iconButtonOnPress,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Image(
              image: AssetImage(imageString),
              height: MediaQuery.of(context).size.height / imageHeight,
              width: MediaQuery.of(context).size.width / imageWidth,
              fit: imageBoxFit,
            ),

            textContainer.textContainer(
                context: context,
                textContainerHeight: textContainerHeight,
                textContainerWidth: textContainerWidth,
                textContainerAlignment: textContainerAlignment,
                textContainerString: textContainerString,
                textContainerTextAlignment: textContainerTextAlignment,
                textContainerFontSize: textContainerFontSize,
                textContainerFontColor: textContainerFontColor,
                textContainerFontWeight: textContainerFontWeight,
                textContainerFontStyle: textContainerFontStyle
            ),
          ],
        ),
      ),
    );
  }
}