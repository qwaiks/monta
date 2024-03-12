import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:monta/components/async_widget.dart';
import 'package:monta/country_provider.dart';

class AllCountriesScreen extends ConsumerWidget {
  const AllCountriesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final countryList = AsyncValueWidget(
      value: ref.watch(countriesProviderProvider),
      data: (countries) {
        return ListView.separated(
          separatorBuilder: (context, index) => const Divider(
            height: 0.2,
          ),
          itemCount: countries.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(countries[index].name),
              subtitle: Text(countries[index].capital ?? 'unavailable'),
            );
          },
        );
      },
    );

    return countryList;
  }
}
