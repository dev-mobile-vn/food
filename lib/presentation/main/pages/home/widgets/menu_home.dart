import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/resource/colors.dart';
import '../bloc/home_bloc.dart';

class MenuHome extends StatelessWidget {
  const MenuHome({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = PageController(viewportFraction: 1.1);
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (_, state) {
        int position = 0;
        if (state is ChangePageViewState) {
          position = state.position;
        }
        if (state is GetBannersState) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 120,
                  child: PageView.builder(
                      onPageChanged: (index) {
                        context
                            .read<HomeBloc>()
                            .add(ChangePageViewEvent(index));
                      },
                      itemCount: state.banners.length,
                      itemBuilder: (_, index) {
                        return FractionallySizedBox(
                          widthFactor: 1 / pageController.viewportFraction,
                          child: Container(
                            height: 120,
                            padding: const EdgeInsets.only(left: 2, right: 2),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        state.banners[position].image),
                                    fit: BoxFit.fitWidth),
                                borderRadius: BorderRadius.circular(8.0)),
                          ),
                        );
                      }),
                ),
                const SizedBox(height: 8),
                Row(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(state.banners.length, (index) {
                      bool selected = position == index;
                      if (selected) {
                        return Container(
                          width: 8,
                          height: 8,
                          margin: const EdgeInsets.only(left: 2, right: 2),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: kPrimaryColor),
                        );
                      }
                      return Container(
                        margin: const EdgeInsets.only(left: 2, right: 2),
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.grey.withOpacity(0.5)),
                      );
                    }))
              ],
            ),
          );
        }

        return const SizedBox.shrink();
      },
    );
  }
}
