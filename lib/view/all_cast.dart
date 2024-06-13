import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:lemonhivetask/bloc/bloc.dart';
import 'package:lemonhivetask/bloc/state.dart';
import 'package:lemonhivetask/utils/image_and_text.dart';

import '../bloc/event.dart';
import '../model/grapgl_model.dart';

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
      appBar: AppBar(
        title: Center(child: Text("Rick And Morty")),
      ),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context,state){
          if(state is UserLoading){
            return Center(child: CircularProgressIndicator(),);
          }
          if(state is UserError){
            return Center(child: Text(state.message),);
          }

          if(state is UserDataLoaded){
            return _allCast(context, state.grickAndMorty);
          }
          return Center(child: Text("lfjfldfsdfs"),);
        },
      ),
    );
  }

  Widget _allCast(BuildContext context, List<Results> rickAndMorty){
    DashboardTextImageContainer dashboardTextImageContainer = DashboardTextImageContainer();
 print(rickAndMorty.length);
    return Container(
      width: MediaQuery.of(context).size.width / 1,
    //   child:ListView.builder(
    //       shrinkWrap: true,
    //       itemCount: rickAndMorty.length,
    //       itemBuilder: (context, index){
    //    return Text(rickAndMorty[index].name.toString(),style: TextStyle(color: Colors.red),);
    // }
      child: CustomScrollView(
        slivers: [
          SliverGrid(delegate: SliverChildBuilderDelegate(
                (context, int index){
              return Padding(
                padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/40 ,vertical: MediaQuery.of(context).size.height/50 ),
                child: InkWell(

                  child: dashboardTextImageContainer.dashboardTextImageContainer(
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
                      boxShadowColor:  Color.fromARGB(255, 247, 245, 245),
                      boxShadowoffset:  const Offset(0, 3),
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
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),)
        ],
      ),

    );
  }
}
