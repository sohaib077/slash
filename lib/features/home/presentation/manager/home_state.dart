part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}
final class ChangeTaBValueState extends HomeState {}
final class ChangeCurrentSliderIndexState extends HomeState {}

