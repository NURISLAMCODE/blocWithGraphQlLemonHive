

import 'package:flutter/material.dart';


class ImageContainer {

  Widget imageContainer({
    required BuildContext context,
    required double imageHeight,
    required double imageWidth,
    required bool isNetworkImage,
    required String imagePath,
    required BoxFit imageBoxFit,
  }){
    return Container(
      height: MediaQuery.of(context).size.height / imageHeight,
      width: MediaQuery.of(context).size.width / imageWidth,
      decoration: isNetworkImage == false ?
      BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: imageBoxFit,
        ),
      ) :
      BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imagePath),
            fit: imageBoxFit,
          )
      ),
    );
  }


  Widget imageContainerCircle({
    required BuildContext context,
    required double imageHeight,
    required double imageWidth,
    required bool isNetworkImage,
    required String imagePath,
    required BoxFit imageBoxFit,
  }){
    return Container(
      height: MediaQuery.of(context).size.height / imageHeight,
      width: MediaQuery.of(context).size.width / imageWidth,
      decoration: isNetworkImage == false ?
      BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: imageBoxFit,
        ),
      ) :
      BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: NetworkImage(imagePath),
            fit: imageBoxFit,
          )
      ),
    );
  }

  Widget imageIconButton({
    required BuildContext context,
    required Function() imageButtonOnTap,
    required String imageIcon,
    required double imageIconHeight,
    required double imageIconWidth,
    required BoxFit imageIconBoxFit
  }) {
    return InkWell(
      onTap: imageButtonOnTap,
      child: Image(
        image: AssetImage(imageIcon),
        height: MediaQuery.of(context).size.height / imageIconHeight,
        width: MediaQuery.of(context).size.width / imageIconWidth,
        fit: imageIconBoxFit,
      ),
    );
  }
}