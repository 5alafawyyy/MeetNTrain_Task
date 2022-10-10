import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meet_n_train_task/core/network/api_constance.dart';
import 'package:meet_n_train_task/core/services/services_locator.dart';
import 'package:meet_n_train_task/core/utils/enums.dart';
import 'package:meet_n_train_task/events/presentation/controllers/events_bloc.dart';
import 'package:meet_n_train_task/events/presentation/controllers/events_event.dart';
import 'package:meet_n_train_task/events/presentation/controllers/events_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<EventsBloc>()..add(GetEventsEvent()),
      child: Scaffold(
        body: Column(children: const [NowPlayingComponent()]),
      ),
    );
  }
}

class NowPlayingComponent extends StatelessWidget {
  const NowPlayingComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventsBloc, EventsState>(
      builder: (context, state) {
        switch (state.eventsState) {
          case RequestState.loading:
            return const SizedBox(
                height: 320,
                child: Center(child: CircularProgressIndicator.adaptive()));
          case RequestState.success:
            // print(state.events.toList().last);

            return GestureDetector(
              key: const Key('openMovieMinimalDetail'),
              onTap: () {},
              child: Stack(
                children: [
                  ShaderMask(
                    shaderCallback: (rect) {
                      return const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          // fromLTRB
                          Colors.transparent,
                          Colors.black,
                          Colors.black,
                          Colors.transparent,
                        ],
                        stops: [0, 0.3, 0.5, 1],
                      ).createShader(
                        Rect.fromLTRB(0, 0, rect.width, rect.height),
                      );
                    },
                    blendMode: BlendMode.dstIn,
                    child: Image.network(
                      ApiConstance.imageUrl(state.events.first.images![0].url!),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.circle,
                                color: Colors.redAccent,
                                size: 16.0,
                              ),
                              const SizedBox(width: 4.0),
                              Text(
                                'Now Playing'.toUpperCase(),
                                style: const TextStyle(
                                    fontSize: 16.0, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: Text(
                            state.events.first.title!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );

          case RequestState.failure:
            return SizedBox(
                height: 320, child: Center(child: Text(state.eventsMessage)));
        }
      },
    );
  }
}
