import 'package:basic_flutter/pages/login_page.dart';
import 'package:basic_flutter/pages/signup.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../pages/first_page.dart';
import '../pages/second_page.dart';
import '../pages/error_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => LoginPage(),
    ),
      GoRoute(
      path: '/signup',
      builder: (context, state) => SignupPage(),
    ),
    GoRoute(
      path: '/first',
      builder: (context, state) => FirstPage(),
    ),
    GoRoute(
      name: '/second',
      path: '/second',
      builder: (context, state) {
        // Access query parameters using state.uri.queryParameters
        // final data = state.uri.queryParameters['data'];

        final data = state.extra as String?;

        // validation for the data
        if (data == null || data.isEmpty) {
          return ErrorPage(message: 'Data parameter is missing or empty!');
        }
        // if (int.tryParse(data) == null) {
        //   return ErrorPage(message: 'Data must be a valid number!');
        // }

        // If no errors, then return to the destination
        return SecondPage(data: data);
      },
    ),
  ],
  errorBuilder: (context, state) => ErrorPage(
    message: 'Page not found: ${state.uri.toString()}',
  ),
);