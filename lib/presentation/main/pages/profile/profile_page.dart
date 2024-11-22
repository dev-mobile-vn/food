import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/di/injector.dart';
import 'package:food/presentation/main/pages/profile/bloc/profile_bloc.dart';
import 'package:food/presentation/main/pages/profile/view/profile_view.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (context) => getIt.get<ProfileBloc>(),
      child: BlocListener<ProfileBloc, ProfileState>(
        listener: (context, state) {

        },
        child: SafeArea(
          child: ProfileView(),
        ),
      ),
    );
  }
}
