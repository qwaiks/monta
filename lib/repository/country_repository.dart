import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:monta/models/country.dart';
import 'package:monta/services/gql_client.dart';
import 'package:monta/services/graphql/queries/country.graphql.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'country_repository.g.dart';

abstract class CountryRepository {
  Future<List<Country>> fetchCountries();
  Future<Country?> getCountry(String code);
}

class ApiCountryRepository extends CountryRepository {
  final GraphQLClient countriesApiClient;

  ApiCountryRepository({required this.countriesApiClient});

  @override
  Future<List<Country>> fetchCountries() async {
    final response = await countriesApiClient.query$getAllCountries();
    if (response.hasException) {
      throw Exception(response.exception.toString());
    }

    final parsedCountries = response.parsedData;
    if (parsedCountries == null) {
      //throw Exception('No data');
      return [];
    }

    return parsedCountries.countries
        .map((e) => Country.fromJson(e.toJson()))
        .toList();
  }

  @override
  Future<Country?> getCountry(String code) async {
    final response = await countriesApiClient.query$getCountryByCode(
      Options$Query$getCountryByCode(
        variables: Variables$Query$getCountryByCode(code: code),
      ),
    );

    if (response.hasException) {
      throw Exception(response.exception.toString());
    }

    final parsedCountry = response.parsedData;
    if (parsedCountry == null) {
      //throw Exception('No data');
      return null;
    }

    if (parsedCountry.country == null) {
      return null;
    }

    return Country.fromJson(parsedCountry.country!.toJson());
  }
}

@riverpod
ApiCountryRepository countryRepository(CountryRepositoryRef ref) {
  final client = ref.watch(gqlClientProvider).client;
  return ApiCountryRepository(countriesApiClient: client);
}
