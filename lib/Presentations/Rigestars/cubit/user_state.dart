part of 'user_cubit.dart';

@immutable
sealed class UserState {}

final class UserInitial extends UserState {}

final class UserloginLooding extends UserState {}

final class UserloginSucess extends UserState {
   final String msg;
 UserloginSucess (this.msg);}

final class UserloginError extends UserState {
  final String error;
  UserloginError({required this.error});
}

final class UserSignLooding extends UserState {}

final class UserSignSucess extends UserState {
   final String msg;
 UserSignSucess (this.msg);}

final class UserSignError extends UserState {
  final String error;
  UserSignError({required this.error});
}
