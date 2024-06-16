import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/bloc.dart';
import '../bloc/event.dart';
import '../bloc/state.dart';
import '../model/grapgl_model.dart';
import '../utils/all_page_bottom.dart';
import '../utils/image_container.dart';
import 'all_cast.dart';

class CastDetails extends StatefulWidget {
  CastDetails({
    super.key,
     this.id,
  });
 String? id = "";
  @override
  State<CastDetails> createState() => _CastDetailsState();
}

class _CastDetailsState extends State<CastDetails> {
  final GlobalKey<ScaffoldState> castDetailsKey = GlobalKey<ScaffoldState>();
  AllPageBottomNavigationBarWidget allPageBottomNavigationBarWidget =
      AllPageBottomNavigationBarWidget();
  ImageContainer imageContainer = ImageContainer();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<UserBloc>().add(GetRickAndMortyData());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: castDetailsKey,
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
            return InkWell(
                onTap: () {}, child: detailsPage(context,state.grickAndMorty[0].id, state.grickAndMorty));
          }
          return Center(
            child: Text("lfjfldfsdfs"),
          );
        },
      ),
      bottomNavigationBar:
          allPageBottomNavigationBarWidget.allPageBottomNavigationBarWidget(
        context: context,
        isHome: false,
        isCast: true,
        key: castDetailsKey,
      ),
    );
  }

  Widget detailsPage(BuildContext context, String? id, List<Results>? results) {
    return Container(
      width: MediaQuery.of(context).size.width / 1,
      decoration: BoxDecoration(
        color: Color(0xff191D29),
      ),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: SizedBox(
            height: 16,
          )),
          SliverAppBar(
            pinned: false,
            primary: true,
            backgroundColor: Color(0xff363d43),
            automaticallyImplyLeading: false,
            expandedHeight: MediaQuery.of(context).size.height / 10,
            collapsedHeight: MediaQuery.of(context).size.height / 10,
            flexibleSpace: SizedBox(
              height: MediaQuery.of(context).size.height / 7,
              width: MediaQuery.of(context).size.width / 1,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 50, bottom: 10),
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AllCastScreen()),
                          );
                        },
                        child: Icon(
                          Icons.arrow_back_ios_new_outlined,
                          color: Color(0xffFFFFFF),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: imageContainer.imageContainer(
                          context: context,
                          imageHeight: 10,
                          imageWidth: 3,
                          isNetworkImage: false,
                          imagePath: "images/Vector.png",
                          imageBoxFit: BoxFit.contain),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverFillRemaining(
              child: Container(
            width: MediaQuery.of(context).size.width / 1,
            decoration: const BoxDecoration(
                color: Color(0xff191D29),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                )),
            padding: const EdgeInsets.only(right: 15, left: 15, top: 15),
                 child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(child: SizedBox(height: 10,)),

                ],),
          )),
        ],
      ),
    );
  }
}
