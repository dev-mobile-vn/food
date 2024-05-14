part of 'onboarding_bloc.dart';

abstract class OnboardingEvent extends Equatable {}

class OnboardingFetchEvent extends OnboardingEvent {
  @override
  List<Object?> get props => [];
}

class OnboardingChangeTabEvent extends OnboardingEvent {
  final int position;

  OnboardingChangeTabEvent(this.position);

  @override
  List<Object?> get props => [position];
}
