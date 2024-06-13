import 'package:equatable/equatable.dart';

import '../model/grapgl_model.dart';

abstract class UserState extends Equatable{}

class UserInit extends UserState{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class UserLoading extends UserState{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class UserDataLoaded extends UserState{
 List<Results> grickAndMorty;
 UserDataLoaded(this.grickAndMorty);
  @override
  // TODO: implement props
  List<Object?> get props => [grickAndMorty];
}

class UserError extends UserState{
String message;
UserError(this.message);

  @override
  // TODO: implement props
  List<Object?> get props => [message];
}