import 'package:flutter/cupertino.dart';

@immutable
abstract class FinalsState {}

class FinalsInitial extends FinalsState {}

class FinalsSuccess extends FinalsState {}

class FinalsFailure extends FinalsState {}
