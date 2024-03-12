import 'package:freezed_annotation/freezed_annotation.dart';

part 'country.freezed.dart';
part 'country.g.dart';

@freezed
class Country with _$Country {
  const factory Country({
    required String name,
    required String code,
    String? capital,
  }) = _Country;

  const Country._();
  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);
}
