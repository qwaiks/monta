import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:monta/routing/app_router.dart';
import 'package:monta/screens/all_countries_screen.dart';
import 'package:monta/services/gql_client.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
    return GraphQLProvider(
      client: graphqlClient(ref),
      child: MaterialApp.router(
        routerConfig: goRouter,
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a purple toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
      ),
    );
  }
}

class AppScreen extends StatelessWidget {
  const AppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final countryListButton = Consumer(builder: (context, ref, child) {
      return ElevatedButton(
        onPressed: () {
          ref.read(goRouterProvider).pushNamed(AppRoute.allCountries.name);
        },
        child: const Text('By name'),
      );
    });

    final searchScreenButton = Consumer(builder: (context, ref, child) {
      return ElevatedButton(
        onPressed: () {
          ref.read(goRouterProvider).pushNamed(AppRoute.searchCountry.name);
        },
        child: const Text('By code'),
      );
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Monta'),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Text(
                  'Search country: ',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(
                  height: 8,
                ),
                searchScreenButton,
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            const Expanded(child: AllCountriesScreen())
          ],
        ),
      ),
    );
  }
}
