import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:lemonhivetask/bloc/bloc.dart';
import 'package:lemonhivetask/bloc/state.dart';
import 'package:lemonhivetask/utils/image_and_text.dart';

import '../bloc/event.dart';
import '../model/grapgl_model.dart';
import '../utils/image_container.dart';

class AllCastScreen extends StatefulWidget {
  AllCastScreen({super.key});

  @override
  State<AllCastScreen> createState() => _AllCastScreenState();
}

class _AllCastScreenState extends State<AllCastScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<UserBloc>().add(GetRickAndMortyData());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          if (state is UserLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is UserError) {
            return Center(
              child: Text(state.message),
            );
          }

          if (state is UserDataLoaded) {
            return _allCast(context, state.grickAndMorty);
          }
          return Center(
            child: Text("lfjfldfsdfs"),
          );
        },
      ),
    );
  }

  Widget _allCast(BuildContext context, List<Results> rickAndMorty) {
    DashboardTextImageContainer dashboardTextImageContainer =
        DashboardTextImageContainer();
    ImageContainer imageContainer = ImageContainer();
    print(rickAndMorty.length);
    return Container(
      width: MediaQuery.of(context).size.width / 1,
      //   child:ListView.builder(
      //       shrinkWrap: true,
      //       itemCount: rickAndMorty.length,
      //       itemBuilder: (context, index){
      //    return Text(rickAndMorty[index].name.toString(),style: TextStyle(color: Colors.red),);
      // }
      decoration: BoxDecoration(
        color: Color(0xff191D29),
      ),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 16,)),
          SliverAppBar(
            pinned: false,
            primary: true,
            backgroundColor: Color(0xff363d43),
            automaticallyImplyLeading: false,
            expandedHeight: MediaQuery.of(context).size.height / 10,
            collapsedHeight: MediaQuery.of(context).size.height / 10,
            flexibleSpace: SizedBox(
              height: MediaQuery.of(context).size.height / 6,
              width: MediaQuery.of(context).size.width / 1,
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: imageContainer.imageContainer(
                    context: context,
                    imageHeight: 10,
                    imageWidth: 3,
                    isNetworkImage: false,
                    imagePath: "images/Vector.png",
                    imageBoxFit: BoxFit.contain),
              ),
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, int index) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 40,
                      vertical: MediaQuery.of(context).size.height / 50),
                  child: InkWell(
                    child:
                        dashboardTextImageContainer.dashboardTextImageContainer(
                            context: context,
                            firstSpaceSpace: 10,
                            mainContainerHeight: 18,
                            mainContainerWidth: 1,
                            imageString: rickAndMorty[index].image.toString(),
                            isNetworkImage: true,
                            imageContainerHeight: 16,
                            imageContainerWidth: 6,
                            imageBoxFit: BoxFit.contain,
                            imageAndTextSpace: 8,
                            textContainerHeight: 18,
                            textContainerWidth: 3.4,
                            textString: rickAndMorty[index].name.toString(),
                            textContainerAlignment: Alignment.center,
                            textStringSize: 14,
                            textStringColor: Color(0xff313131),
                            containerColor: Color(0xffFFFFFF),
                            containerBorderRadius: 12,
                            boxShadowColor: Color.fromARGB(255, 247, 245, 245),
                            boxShadowoffset: const Offset(0, 3),
                            boxShadowspreadRadius: 1.0,
                            boxShadowblurRadius: 0.6,
                            textStringAlign: TextAlign.center,
                            textStringWeight: FontWeight.w600,
                            textStringStyle: FontStyle.normal),
                  ),
                );
              },
              childCount: rickAndMorty.length,
            ),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          )
        ],
      ),
    );
  }
}
