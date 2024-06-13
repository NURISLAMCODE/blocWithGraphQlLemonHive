
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:google_fonts/google_fonts.dart';
class TextContainer {

  Widget textContainer({
    required BuildContext context,
    required double textContainerHeight,
    required double textContainerWidth,
    required Alignment textContainerAlignment,
    required String textContainerString,
    required TextAlign textContainerTextAlignment,
    required double textContainerFontSize,
    required Color textContainerFontColor,
    required FontWeight textContainerFontWeight,
    required FontStyle textContainerFontStyle
  }){
    return SizedBox(
      height: MediaQuery.of(context).size.height / textContainerHeight,
      width: MediaQuery.of(context).size.width / textContainerWidth,
      child: Align(
        alignment: textContainerAlignment,
        child: Text(
          textContainerString,
          textAlign: textContainerTextAlignment,
          style: GoogleFonts.poppins(
            fontSize: textContainerFontSize,
            color: textContainerFontColor,
            fontWeight: textContainerFontWeight,
            fontStyle: textContainerFontStyle,
          ),
        ),
      ),
    );
  }


  Widget htmlTextContainer({
    required BuildContext context,
    required double textContainerWidth,
    required Alignment textContainerAlignment,
    required String textContainerString,
    required double textContainerFontSize,
    required Color textContainerFontColor,
    required FontWeight textContainerFontWeight,
    required FontStyle textContainerFontStyle
  }){
    return SizedBox(
      width: MediaQuery.of(context).size.width / textContainerWidth,
      child: Align(
        alignment: textContainerAlignment,
        child: HtmlWidget(
          textContainerString,
          textStyle: GoogleFonts.poppins(
            fontSize: textContainerFontSize,
            color: textContainerFontColor,
            fontWeight: textContainerFontWeight,
            fontStyle: textContainerFontStyle,
          ),
        ),
      ),
    );
  }

  Widget textContainerWithColorAndRadius({
    required BuildContext context,
    required double textContainerHeight,
    required Color textContainerColor,
    required double textContainerBorderRadius,
    required Alignment textContainerAlignment,
    required String textContainerString,
    required TextAlign textContainerTextAlignment,
    required double textContainerFontSize,
    required Color textContainerFontColor,
    required FontWeight textContainerFontWeight,
    required FontStyle textContainerFontStyle
  }){
    return Container(
      height: MediaQuery.of(context).size.height / textContainerHeight,
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width /35,right: MediaQuery.of(context).size.width /35),
      decoration: BoxDecoration(
        color: textContainerColor,
        borderRadius: BorderRadius.circular(textContainerBorderRadius),
      ),
      child: Align(
        alignment: textContainerAlignment,
        child: Text(
          textContainerString,
          textAlign: textContainerTextAlignment,
          style: GoogleFonts.poppins(
            fontSize: textContainerFontSize,
            color: textContainerFontColor,
            fontWeight: textContainerFontWeight,
            fontStyle: textContainerFontStyle,
          ),
        ),
      ),
    );
  }


  Widget textContainerFullWithColorAndRadius({
    required BuildContext context,
    required double textContainerHeight,
    required double textContainerWidth,
    required Color textContainerColor,
    required double textContainerBorderRadius,
    required Alignment textContainerAlignment,
    required String textContainerString,
    required TextAlign textContainerTextAlignment,
    required double textContainerFontSize,
    required Color textContainerFontColor,
    required FontWeight textContainerFontWeight,
    required FontStyle textContainerFontStyle
  }){
    return Container(
      height: MediaQuery.of(context).size.height / textContainerHeight,
      width: MediaQuery.of(context).size.width / textContainerWidth,
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width /35,right: MediaQuery.of(context).size.width /35),
      decoration: BoxDecoration(
        color: textContainerColor,
        borderRadius: BorderRadius.circular(textContainerBorderRadius),
      ),
      child: Align(
        alignment: textContainerAlignment,
        child: Text(
          textContainerString,
          textAlign: textContainerTextAlignment,
          style: GoogleFonts.poppins(
            fontSize: textContainerFontSize,
            color: textContainerFontColor,
            fontWeight: textContainerFontWeight,
            fontStyle: textContainerFontStyle,
          ),
        ),
      ),
    );
  }


  Widget textContainerWithPadding({
    required BuildContext context,
    required double textContainerLeftPadding,
    required double textContainerRightPadding,
    required double textContainerTopPadding,
    required double textContainerBottomPadding,
    required double textContainerHeight,
    required double textContainerWidth,
    required Alignment textContainerAlignment,
    required String textContainerString,
    required TextAlign textContainerTextAlignment,
    required double textContainerFontSize,
    required Color textContainerFontColor,
    required FontWeight textContainerFontWeight,
    required FontStyle textContainerFontStyle
  }){
    return Padding(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width / textContainerLeftPadding,
        right: MediaQuery.of(context).size.width / textContainerRightPadding,
        top: MediaQuery.of(context).size.height / textContainerTopPadding,
        bottom: MediaQuery.of(context).size.height / textContainerBottomPadding,
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / textContainerHeight,
        width: MediaQuery.of(context).size.width / textContainerWidth,
        child: Align(
          alignment: textContainerAlignment,
          child: Text(
            textContainerString,
            textAlign: textContainerTextAlignment,
            style: GoogleFonts.poppins(
              fontSize: textContainerFontSize,
              color: textContainerFontColor,
              fontWeight: textContainerFontWeight,
              fontStyle: textContainerFontStyle,
            ),
          ),
        ),
      ),
    );
  }


  Widget text2TextContainer({
    required BuildContext context,
    required MainAxisAlignment rowMainAxisAlignment,
    required double textContainerHeight,
    required double textContainerWidth,
    required Alignment textContainerAlignment,
    required String textContainerString,
    required TextAlign textContainerTextAlignment,
    required double textContainerFontSize,
    required Color textContainerFontColor,
    required FontWeight textContainerFontWeight,
    required FontStyle textContainerFontStyle,

    required double textContainerHeight1,
    required double textContainerWidth1,
    required Alignment textContainerAlignment1,
    required String textContainerString1,
    required TextAlign textContainerTextAlignment1,
    required double textContainerFontSize1,
    required Color textContainerFontColor1,
    required FontWeight textContainerFontWeight1,
    required FontStyle textContainerFontStyle1
  }){
    return Row(
      mainAxisAlignment: rowMainAxisAlignment,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / textContainerHeight,
          width: MediaQuery.of(context).size.width / textContainerWidth,
          child: Align(
            alignment: textContainerAlignment,
            child: Text(
              textContainerString,
              textAlign: textContainerTextAlignment,
              style: GoogleFonts.poppins(
                fontSize: textContainerFontSize,
                color: textContainerFontColor,
                fontWeight: textContainerFontWeight,
                fontStyle: textContainerFontStyle,
              ),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / textContainerHeight1,
          width: MediaQuery.of(context).size.width / textContainerWidth1,
          child: Align(
            alignment: textContainerAlignment1,
            child: Text(
              textContainerString1,
              textAlign: textContainerTextAlignment1,
              style: GoogleFonts.poppins(
                fontSize: textContainerFontSize1,
                color: textContainerFontColor1,
                fontWeight: textContainerFontWeight1,
                fontStyle: textContainerFontStyle1,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
