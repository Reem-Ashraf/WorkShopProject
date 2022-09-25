part of 'laout_cubit.dart';

@immutable
abstract class LaoutState {}

class LaoutInitial extends LaoutState {}
class LayoutChanged extends LaoutState {}
