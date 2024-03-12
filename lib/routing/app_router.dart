import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:monta/main.dart';
import 'package:monta/screens/all_countries_screen.dart';
import 'package:monta/screens/search_country_by_code_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

enum AppRoute {
  home,
  allCountries,
  searchCountry,
}

@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: false,
      routes: [
        GoRoute(
            path: '/',
            name: AppRoute.home.name,
            builder: (context, state) => const AppScreen(),
            routes: [
              GoRoute(
                path: 'countries',
                name: AppRoute.allCountries.name,
                builder: (context, state) => const AllCountriesScreen(),
              ),
              GoRoute(
                path: 'searchCountry',
                name: AppRoute.searchCountry.name,
                builder: (context, state) => const SearchCountryByCodeScreen(),
              ),
            ]),
      ],
      errorBuilder: (context, state) => const Scaffold(
            body: Center(
              child: Text('404: Not Found'),
            ),
          ));
}
