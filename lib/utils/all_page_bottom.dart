

import 'package:flutter/material.dart';

import '../view/all_cast.dart';
import '../view/cast_details.dart';
import 'icon_button.dart';

class AllPageBottomNavigationBarWidget  {

  IconButtonWidget iconButtonWidget = IconButtonWidget();

  Widget allPageBottomNavigationBarWidget({
    required BuildContext context,
    required bool isHome,
    required bool isCast,
    required GlobalKey<ScaffoldState> key
  }){
    return Container(
      height: MediaQuery.of(context).size.height / 12,
      width: MediaQuery.of(context).size.width / 1,
      decoration: const BoxDecoration(
        color: Color(0xff191D29),
      ),
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          //home
          iconButtonWidget.bottomNavigationIconButton(
            context: context,
            mainContainerHeight: 13,
            mainContainerWidth: 6,
            mainContainerColor: isHome == true ? Color(0xff363d43) : Colors.black,
            mainContainerRadius: 12,
            imageString: isHome == true ? "images/home.png" : "images/unselect.png",
            imageHeight: 30,
            iconButtonOnPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AllCastScreen()),
              );
            },
            imageWidth: 15,
            imageBoxFit: BoxFit.contain,
            textContainerHeight: 40,
            textContainerWidth: 4,
            textContainerAlignment: Alignment.center,
            textContainerString: "Home",
            textContainerTextAlignment: TextAlign.center,
            textContainerFontSize: 11,
            textContainerFontColor:  isHome == true ? Color(0xff9DFE00) : Color(0xffFFFFFF),
            textContainerFontWeight: FontWeight.w500,
            textContainerFontStyle: FontStyle.normal,
          ),

          //Presception
          iconButtonWidget.bottomNavigationIconButton(
            context: context,
            mainContainerHeight: 13,
            mainContainerWidth: 4.5,
            mainContainerColor: isCast == true ? Color(0xff363d43): Colors.black,
            mainContainerRadius: 12,
            imageString: isCast == true ? "images/cast.png" :  "images/unselectcast.png",
            imageHeight: 30,
            iconButtonOnPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CastDetails()),
              );
            },
            imageWidth: 15,
            imageBoxFit: BoxFit.contain,
            textContainerHeight: 45,
            textContainerWidth: 5,
            textContainerAlignment: Alignment.center,
            textContainerString: "Cast",
            textContainerTextAlignment: TextAlign.center,
            textContainerFontSize: 11,
            textContainerFontColor: isCast == true ?  Color(0xff9DFE00) : Color(0xffFFFFFF),
            textContainerFontWeight: FontWeight.w500,
            textContainerFontStyle: FontStyle.normal,
          ),
        ],
      ),
    );
  }
}