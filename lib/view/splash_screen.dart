
import 'package:flutter/material.dart';
import 'package:lemonhivetask/utils/image_container.dart';
import 'package:lemonhivetask/view/all_cast.dart';

import '../utils/loading_widget.dart';

class SplashScreen extends StatefulWidget {
 const SplashScreen({super.key});
  //LoadingWidget loadingWidget = LoadingWidget();

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
Future.delayed(Duration(seconds: 3),()async{
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => AllCastScreen()),
  );
});
  }

  @override
  Widget build(BuildContext context) {
    ImageContainer imageContainer = ImageContainer();
    return  Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height / 1,
        width: MediaQuery.of(context).size.width / 1,
        child: imageContainer.imageContainer(
            context: context,
            imageHeight: 1,
            imageWidth: 1,
            isNetworkImage: false,
            imagePath: "images/splash_screen.png",
            imageBoxFit: BoxFit.cover),
      ),
    );
  }
}
