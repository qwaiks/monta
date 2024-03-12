import 'package:monta/models/country.dart';
import 'package:monta/repository/country_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'country_provider.g.dart';

@riverpod
class CountriesProvider extends _$CountriesProvider {
  @override
  Future<List<Country>> build() async {
    final countries = ref.read(countryRepositoryProvider);
    return countries.fetchCountries();
  }
}

@riverpod
class CountryProvider extends _$CountryProvider {
  @override
  Future<void> build() async {}

  Future<Country?> searchByCode(String code) async {
    Country? country;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final countries = ref.read(countryRepositoryProvider);
      country = await countries.getCountry(code);
    });
    return country;
  }
}
