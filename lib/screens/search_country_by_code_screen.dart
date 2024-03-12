import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:monta/components/async_widget.dart';
import 'package:monta/components/error_widget.dart';
import 'package:monta/country_provider.dart';
import 'package:monta/models/country.dart';

class SearchCountryByCodeScreen extends ConsumerStatefulWidget {
  const SearchCountryByCodeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SearchCountryByCodeScreenState();
}

class _SearchCountryByCodeScreenState
    extends ConsumerState<SearchCountryByCodeScreen> {
  final TextEditingController _searchController = TextEditingController();

  late String _code;
  bool isLoaded = false;
  Country? country;

  @override
  void initState() {
    //generate random number between 0 and 1
    final randomNumber = Random().nextInt(2);
    _code = ['UZ', 'TN'][randomNumber];
    _searchController.text = _code;
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      country =
          await ref.read(countryProviderProvider.notifier).searchByCode(_code);
      setState(() {
        isLoaded = true;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final countryWidget = AsyncValueWidget(
        value: ref.watch(countryProviderProvider),
        data: (data) {
          if (!isLoaded) {
            return const CircularProgressIndicator.adaptive();
          }
          if (country == null) {
            return CustomErrorWidget(
                errorMessage: 'No country found with the given code: $_code');
          }
          return ListTile(
            title: Text(country!.name),
            subtitle: Text(country!.capital ?? 'unavailable'),
          );
        });

    final searchFIeld = Row(
      children: [
        Expanded(
          child: TextField(
            controller: _searchController,
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              labelText: 'Search by country code',
              hintText: 'Enter country code',
            ),
          ),
        ),
        //search button
        ElevatedButton(
          onPressed: () async {
            _code = _searchController.text.toUpperCase();
            country = await ref
                .read(countryProviderProvider.notifier)
                .searchByCode(_code);
          },
          child: const Text('Search'),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Country'),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              searchFIeld,
              const SizedBox(
                height: 12,
              ),
              Expanded(child: countryWidget)
            ],
          ),
        ),
      ),
    );
  }
}
