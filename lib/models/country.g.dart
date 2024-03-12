// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountryImpl _$$CountryImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CountryImpl',
      json,
      ($checkedConvert) {
        final val = _$CountryImpl(
          name: $checkedConvert('name', (v) => v as String),
          code: $checkedConvert('code', (v) => v as String),
          capital: $checkedConvert('capital', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CountryImplToJson(_$CountryImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'capital': instance.capital,
    };
