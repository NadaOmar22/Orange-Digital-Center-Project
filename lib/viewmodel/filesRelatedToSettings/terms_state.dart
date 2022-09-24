part of 'terms_cubit.dart';

@immutable
abstract class TermsState {}

class TermsInitial extends TermsState {}

class TermsSuccess extends TermsState {}

class TermsFailure extends TermsState {}
