part of 'onboarding_bloc.dart';

abstract class OnboardingState extends Equatable {}

class OnboardingInitial extends OnboardingState {
  @override
  List<Object?> get props => [];
}

class OnboardingChangeTabState extends OnboardingState {
  final int position;

  OnboardingChangeTabState(this.position);

  @override
  List<Object?> get props => [position];
}
