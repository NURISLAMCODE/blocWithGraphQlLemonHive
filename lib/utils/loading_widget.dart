
import 'package:flutter/material.dart';

class LoadingWidget {
  bool isLoaded = false;

  Widget loading({
    required BuildContext context,
    required double containerHeight,
    required double containerWidth,
    required Color loadedColor,
  }) {
    return Container(
      height: MediaQuery.of(context).size.height / containerHeight,
      width: MediaQuery.of(context).size.width / containerWidth,
      child: Center(
        child: CircularProgressIndicator(color: loadedColor,),
      ),
    );
  }

  Widget LoadingWithCphImage({
    required BuildContext context,
    required Color containerColor,
    required double containerHeight,
    required double containerWidth,
    required double imageHeight,
    required double imageWidth,
  }) {
    return Container(
      height: MediaQuery.of(context).size.height / containerHeight,
      width: MediaQuery.of(context).size.width / containerWidth,
      decoration: BoxDecoration(
          color: containerColor
      ),
      child: Center(
        child: Image(
          image: AssetImage("images/CPH_logo_trans.gif"),
          fit: BoxFit.contain,
          height: MediaQuery.of(context).size.height / imageHeight,
          width : MediaQuery.of(context).size.height / imageWidth,
        ),
      ),
    );
  }

}

