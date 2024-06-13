import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lemonhivetask/bloc/event.dart';
import 'package:lemonhivetask/bloc/state.dart';

import '../model/grapgl_model.dart';
import '../service/rickandmorty_Controller.dart';

class UserBloc extends Bloc<UserEvent,UserState>{
  UserBloc():super(UserInit()) {
    RickandmortyControlr _rickandmortyControlr = RickandmortyControlr();
    on<GetRickAndMortyData>((event, emit) async{
      try{
        emit(UserLoading());
        await _rickandmortyControlr.getShowRickAndMurky().then((value){
          emit(UserDataLoaded(value));
        });
      }catch(e){
        emit(UserError(e.toString()));
      }
    });
  }
}