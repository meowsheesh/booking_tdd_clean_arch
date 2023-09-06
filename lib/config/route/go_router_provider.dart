import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/booking/presentation/bloc/rooms/rooms_page_bloc.dart';
import 'package:flutter_application_1/features/booking/presentation/pages/hotel/booking_page.dart';
import 'package:flutter_application_1/features/booking/presentation/pages/hotel/hotel_page.dart';
import 'package:flutter_application_1/features/booking/presentation/pages/hotel/room_page.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/booking/presentation/bloc/hotel/hotel_page_bloc.dart';
import '../../injection_container.dart';

class GoRouterProvider {
  final GoRouter _router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider<HotelPageBloc>(
              create: (context) => sl<HotelPageBloc>()..add(InitializeHotelEvent()),
            child: HotelPage(),
          );
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'room',
            builder: (BuildContext context, GoRouterState state) {
              String hotelName = state.extra as String;
              return BlocProvider<RoomsPageBloc>(
                  create: (context) => sl<RoomsPageBloc>()..add(InitializeEvent()),
                child: RoomPage(hotelName: hotelName,),
              );
            },
          ),
          GoRoute(
            path: 'booking',
            builder: (BuildContext context, GoRouterState state){
              return BookingPage();
            }
          ),
        ],
      ),
    ],
  );
  GoRouter goRoute() {
    return _router;
  }
}
