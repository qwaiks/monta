class Input$ContinentFilterInput {
  factory Input$ContinentFilterInput({Input$StringQueryOperatorInput? code}) =>
      Input$ContinentFilterInput._({
        if (code != null) r'code': code,
      });

  Input$ContinentFilterInput._(this._$data);

  factory Input$ContinentFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('code')) {
      final l$code = data['code'];
      result$data['code'] = l$code == null
          ? null
          : Input$StringQueryOperatorInput.fromJson(
              (l$code as Map<String, dynamic>));
    }
    return Input$ContinentFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$StringQueryOperatorInput? get code =>
      (_$data['code'] as Input$StringQueryOperatorInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('code')) {
      final l$code = code;
      result$data['code'] = l$code?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ContinentFilterInput<Input$ContinentFilterInput>
      get copyWith => CopyWith$Input$ContinentFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ContinentFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (_$data.containsKey('code') != other._$data.containsKey('code')) {
      return false;
    }
    if (l$code != lOther$code) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$code = code;
    return Object.hashAll([_$data.containsKey('code') ? l$code : const {}]);
  }
}

abstract class CopyWith$Input$ContinentFilterInput<TRes> {
  factory CopyWith$Input$ContinentFilterInput(
    Input$ContinentFilterInput instance,
    TRes Function(Input$ContinentFilterInput) then,
  ) = _CopyWithImpl$Input$ContinentFilterInput;

  factory CopyWith$Input$ContinentFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ContinentFilterInput;

  TRes call({Input$StringQueryOperatorInput? code});
  CopyWith$Input$StringQueryOperatorInput<TRes> get code;
}

class _CopyWithImpl$Input$ContinentFilterInput<TRes>
    implements CopyWith$Input$ContinentFilterInput<TRes> {
  _CopyWithImpl$Input$ContinentFilterInput(
    this._instance,
    this._then,
  );

  final Input$ContinentFilterInput _instance;

  final TRes Function(Input$ContinentFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? code = _undefined}) => _then(Input$ContinentFilterInput._({
        ..._instance._$data,
        if (code != _undefined)
          'code': (code as Input$StringQueryOperatorInput?),
      }));

  CopyWith$Input$StringQueryOperatorInput<TRes> get code {
    final local$code = _instance.code;
    return local$code == null
        ? CopyWith$Input$StringQueryOperatorInput.stub(_then(_instance))
        : CopyWith$Input$StringQueryOperatorInput(
            local$code, (e) => call(code: e));
  }
}

class _CopyWithStubImpl$Input$ContinentFilterInput<TRes>
    implements CopyWith$Input$ContinentFilterInput<TRes> {
  _CopyWithStubImpl$Input$ContinentFilterInput(this._res);

  TRes _res;

  call({Input$StringQueryOperatorInput? code}) => _res;

  CopyWith$Input$StringQueryOperatorInput<TRes> get code =>
      CopyWith$Input$StringQueryOperatorInput.stub(_res);
}

class Input$CountryFilterInput {
  factory Input$CountryFilterInput({
    Input$StringQueryOperatorInput? code,
    Input$StringQueryOperatorInput? continent,
    Input$StringQueryOperatorInput? currency,
    Input$StringQueryOperatorInput? name,
  }) =>
      Input$CountryFilterInput._({
        if (code != null) r'code': code,
        if (continent != null) r'continent': continent,
        if (currency != null) r'currency': currency,
        if (name != null) r'name': name,
      });

  Input$CountryFilterInput._(this._$data);

  factory Input$CountryFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('code')) {
      final l$code = data['code'];
      result$data['code'] = l$code == null
          ? null
          : Input$StringQueryOperatorInput.fromJson(
              (l$code as Map<String, dynamic>));
    }
    if (data.containsKey('continent')) {
      final l$continent = data['continent'];
      result$data['continent'] = l$continent == null
          ? null
          : Input$StringQueryOperatorInput.fromJson(
              (l$continent as Map<String, dynamic>));
    }
    if (data.containsKey('currency')) {
      final l$currency = data['currency'];
      result$data['currency'] = l$currency == null
          ? null
          : Input$StringQueryOperatorInput.fromJson(
              (l$currency as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringQueryOperatorInput.fromJson(
              (l$name as Map<String, dynamic>));
    }
    return Input$CountryFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$StringQueryOperatorInput? get code =>
      (_$data['code'] as Input$StringQueryOperatorInput?);

  Input$StringQueryOperatorInput? get continent =>
      (_$data['continent'] as Input$StringQueryOperatorInput?);

  Input$StringQueryOperatorInput? get currency =>
      (_$data['currency'] as Input$StringQueryOperatorInput?);

  Input$StringQueryOperatorInput? get name =>
      (_$data['name'] as Input$StringQueryOperatorInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('code')) {
      final l$code = code;
      result$data['code'] = l$code?.toJson();
    }
    if (_$data.containsKey('continent')) {
      final l$continent = continent;
      result$data['continent'] = l$continent?.toJson();
    }
    if (_$data.containsKey('currency')) {
      final l$currency = currency;
      result$data['currency'] = l$currency?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$CountryFilterInput<Input$CountryFilterInput> get copyWith =>
      CopyWith$Input$CountryFilterInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CountryFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (_$data.containsKey('code') != other._$data.containsKey('code')) {
      return false;
    }
    if (l$code != lOther$code) {
      return false;
    }
    final l$continent = continent;
    final lOther$continent = other.continent;
    if (_$data.containsKey('continent') !=
        other._$data.containsKey('continent')) {
      return false;
    }
    if (l$continent != lOther$continent) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (_$data.containsKey('currency') !=
        other._$data.containsKey('currency')) {
      return false;
    }
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$continent = continent;
    final l$currency = currency;
    final l$name = name;
    return Object.hashAll([
      _$data.containsKey('code') ? l$code : const {},
      _$data.containsKey('continent') ? l$continent : const {},
      _$data.containsKey('currency') ? l$currency : const {},
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}

abstract class CopyWith$Input$CountryFilterInput<TRes> {
  factory CopyWith$Input$CountryFilterInput(
    Input$CountryFilterInput instance,
    TRes Function(Input$CountryFilterInput) then,
  ) = _CopyWithImpl$Input$CountryFilterInput;

  factory CopyWith$Input$CountryFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CountryFilterInput;

  TRes call({
    Input$StringQueryOperatorInput? code,
    Input$StringQueryOperatorInput? continent,
    Input$StringQueryOperatorInput? currency,
    Input$StringQueryOperatorInput? name,
  });
  CopyWith$Input$StringQueryOperatorInput<TRes> get code;
  CopyWith$Input$StringQueryOperatorInput<TRes> get continent;
  CopyWith$Input$StringQueryOperatorInput<TRes> get currency;
  CopyWith$Input$StringQueryOperatorInput<TRes> get name;
}

class _CopyWithImpl$Input$CountryFilterInput<TRes>
    implements CopyWith$Input$CountryFilterInput<TRes> {
  _CopyWithImpl$Input$CountryFilterInput(
    this._instance,
    this._then,
  );

  final Input$CountryFilterInput _instance;

  final TRes Function(Input$CountryFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? continent = _undefined,
    Object? currency = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Input$CountryFilterInput._({
        ..._instance._$data,
        if (code != _undefined)
          'code': (code as Input$StringQueryOperatorInput?),
        if (continent != _undefined)
          'continent': (continent as Input$StringQueryOperatorInput?),
        if (currency != _undefined)
          'currency': (currency as Input$StringQueryOperatorInput?),
        if (name != _undefined)
          'name': (name as Input$StringQueryOperatorInput?),
      }));

  CopyWith$Input$StringQueryOperatorInput<TRes> get code {
    final local$code = _instance.code;
    return local$code == null
        ? CopyWith$Input$StringQueryOperatorInput.stub(_then(_instance))
        : CopyWith$Input$StringQueryOperatorInput(
            local$code, (e) => call(code: e));
  }

  CopyWith$Input$StringQueryOperatorInput<TRes> get continent {
    final local$continent = _instance.continent;
    return local$continent == null
        ? CopyWith$Input$StringQueryOperatorInput.stub(_then(_instance))
        : CopyWith$Input$StringQueryOperatorInput(
            local$continent, (e) => call(continent: e));
  }

  CopyWith$Input$StringQueryOperatorInput<TRes> get currency {
    final local$currency = _instance.currency;
    return local$currency == null
        ? CopyWith$Input$StringQueryOperatorInput.stub(_then(_instance))
        : CopyWith$Input$StringQueryOperatorInput(
            local$currency, (e) => call(currency: e));
  }

  CopyWith$Input$StringQueryOperatorInput<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$StringQueryOperatorInput.stub(_then(_instance))
        : CopyWith$Input$StringQueryOperatorInput(
            local$name, (e) => call(name: e));
  }
}

class _CopyWithStubImpl$Input$CountryFilterInput<TRes>
    implements CopyWith$Input$CountryFilterInput<TRes> {
  _CopyWithStubImpl$Input$CountryFilterInput(this._res);

  TRes _res;

  call({
    Input$StringQueryOperatorInput? code,
    Input$StringQueryOperatorInput? continent,
    Input$StringQueryOperatorInput? currency,
    Input$StringQueryOperatorInput? name,
  }) =>
      _res;

  CopyWith$Input$StringQueryOperatorInput<TRes> get code =>
      CopyWith$Input$StringQueryOperatorInput.stub(_res);

  CopyWith$Input$StringQueryOperatorInput<TRes> get continent =>
      CopyWith$Input$StringQueryOperatorInput.stub(_res);

  CopyWith$Input$StringQueryOperatorInput<TRes> get currency =>
      CopyWith$Input$StringQueryOperatorInput.stub(_res);

  CopyWith$Input$StringQueryOperatorInput<TRes> get name =>
      CopyWith$Input$StringQueryOperatorInput.stub(_res);
}

class Input$LanguageFilterInput {
  factory Input$LanguageFilterInput({Input$StringQueryOperatorInput? code}) =>
      Input$LanguageFilterInput._({
        if (code != null) r'code': code,
      });

  Input$LanguageFilterInput._(this._$data);

  factory Input$LanguageFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('code')) {
      final l$code = data['code'];
      result$data['code'] = l$code == null
          ? null
          : Input$StringQueryOperatorInput.fromJson(
              (l$code as Map<String, dynamic>));
    }
    return Input$LanguageFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$StringQueryOperatorInput? get code =>
      (_$data['code'] as Input$StringQueryOperatorInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('code')) {
      final l$code = code;
      result$data['code'] = l$code?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$LanguageFilterInput<Input$LanguageFilterInput> get copyWith =>
      CopyWith$Input$LanguageFilterInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$LanguageFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (_$data.containsKey('code') != other._$data.containsKey('code')) {
      return false;
    }
    if (l$code != lOther$code) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$code = code;
    return Object.hashAll([_$data.containsKey('code') ? l$code : const {}]);
  }
}

abstract class CopyWith$Input$LanguageFilterInput<TRes> {
  factory CopyWith$Input$LanguageFilterInput(
    Input$LanguageFilterInput instance,
    TRes Function(Input$LanguageFilterInput) then,
  ) = _CopyWithImpl$Input$LanguageFilterInput;

  factory CopyWith$Input$LanguageFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$LanguageFilterInput;

  TRes call({Input$StringQueryOperatorInput? code});
  CopyWith$Input$StringQueryOperatorInput<TRes> get code;
}

class _CopyWithImpl$Input$LanguageFilterInput<TRes>
    implements CopyWith$Input$LanguageFilterInput<TRes> {
  _CopyWithImpl$Input$LanguageFilterInput(
    this._instance,
    this._then,
  );

  final Input$LanguageFilterInput _instance;

  final TRes Function(Input$LanguageFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? code = _undefined}) => _then(Input$LanguageFilterInput._({
        ..._instance._$data,
        if (code != _undefined)
          'code': (code as Input$StringQueryOperatorInput?),
      }));

  CopyWith$Input$StringQueryOperatorInput<TRes> get code {
    final local$code = _instance.code;
    return local$code == null
        ? CopyWith$Input$StringQueryOperatorInput.stub(_then(_instance))
        : CopyWith$Input$StringQueryOperatorInput(
            local$code, (e) => call(code: e));
  }
}

class _CopyWithStubImpl$Input$LanguageFilterInput<TRes>
    implements CopyWith$Input$LanguageFilterInput<TRes> {
  _CopyWithStubImpl$Input$LanguageFilterInput(this._res);

  TRes _res;

  call({Input$StringQueryOperatorInput? code}) => _res;

  CopyWith$Input$StringQueryOperatorInput<TRes> get code =>
      CopyWith$Input$StringQueryOperatorInput.stub(_res);
}

class Input$StringQueryOperatorInput {
  factory Input$StringQueryOperatorInput({
    String? eq,
    List<String>? $in,
    String? ne,
    List<String>? nin,
    String? regex,
  }) =>
      Input$StringQueryOperatorInput._({
        if (eq != null) r'eq': eq,
        if ($in != null) r'in': $in,
        if (ne != null) r'ne': ne,
        if (nin != null) r'nin': nin,
        if (regex != null) r'regex': regex,
      });

  Input$StringQueryOperatorInput._(this._$data);

  factory Input$StringQueryOperatorInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as String?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] =
          (l$$in as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('ne')) {
      final l$ne = data['ne'];
      result$data['ne'] = (l$ne as String?);
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] =
          (l$nin as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('regex')) {
      final l$regex = data['regex'];
      result$data['regex'] = (l$regex as String?);
    }
    return Input$StringQueryOperatorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get eq => (_$data['eq'] as String?);

  List<String>? get $in => (_$data['in'] as List<String>?);

  String? get ne => (_$data['ne'] as String?);

  List<String>? get nin => (_$data['nin'] as List<String>?);

  String? get regex => (_$data['regex'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('ne')) {
      final l$ne = ne;
      result$data['ne'] = l$ne;
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] = l$nin?.map((e) => e).toList();
    }
    if (_$data.containsKey('regex')) {
      final l$regex = regex;
      result$data['regex'] = l$regex;
    }
    return result$data;
  }

  CopyWith$Input$StringQueryOperatorInput<Input$StringQueryOperatorInput>
      get copyWith => CopyWith$Input$StringQueryOperatorInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$StringQueryOperatorInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$ne = ne;
    final lOther$ne = other.ne;
    if (_$data.containsKey('ne') != other._$data.containsKey('ne')) {
      return false;
    }
    if (l$ne != lOther$ne) {
      return false;
    }
    final l$nin = nin;
    final lOther$nin = other.nin;
    if (_$data.containsKey('nin') != other._$data.containsKey('nin')) {
      return false;
    }
    if (l$nin != null && lOther$nin != null) {
      if (l$nin.length != lOther$nin.length) {
        return false;
      }
      for (int i = 0; i < l$nin.length; i++) {
        final l$nin$entry = l$nin[i];
        final lOther$nin$entry = lOther$nin[i];
        if (l$nin$entry != lOther$nin$entry) {
          return false;
        }
      }
    } else if (l$nin != lOther$nin) {
      return false;
    }
    final l$regex = regex;
    final lOther$regex = other.regex;
    if (_$data.containsKey('regex') != other._$data.containsKey('regex')) {
      return false;
    }
    if (l$regex != lOther$regex) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$$in = $in;
    final l$ne = ne;
    final l$nin = nin;
    final l$regex = regex;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('ne') ? l$ne : const {},
      _$data.containsKey('nin')
          ? l$nin == null
              ? null
              : Object.hashAll(l$nin.map((v) => v))
          : const {},
      _$data.containsKey('regex') ? l$regex : const {},
    ]);
  }
}

abstract class CopyWith$Input$StringQueryOperatorInput<TRes> {
  factory CopyWith$Input$StringQueryOperatorInput(
    Input$StringQueryOperatorInput instance,
    TRes Function(Input$StringQueryOperatorInput) then,
  ) = _CopyWithImpl$Input$StringQueryOperatorInput;

  factory CopyWith$Input$StringQueryOperatorInput.stub(TRes res) =
      _CopyWithStubImpl$Input$StringQueryOperatorInput;

  TRes call({
    String? eq,
    List<String>? $in,
    String? ne,
    List<String>? nin,
    String? regex,
  });
}

class _CopyWithImpl$Input$StringQueryOperatorInput<TRes>
    implements CopyWith$Input$StringQueryOperatorInput<TRes> {
  _CopyWithImpl$Input$StringQueryOperatorInput(
    this._instance,
    this._then,
  );

  final Input$StringQueryOperatorInput _instance;

  final TRes Function(Input$StringQueryOperatorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? $in = _undefined,
    Object? ne = _undefined,
    Object? nin = _undefined,
    Object? regex = _undefined,
  }) =>
      _then(Input$StringQueryOperatorInput._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as String?),
        if ($in != _undefined) 'in': ($in as List<String>?),
        if (ne != _undefined) 'ne': (ne as String?),
        if (nin != _undefined) 'nin': (nin as List<String>?),
        if (regex != _undefined) 'regex': (regex as String?),
      }));
}

class _CopyWithStubImpl$Input$StringQueryOperatorInput<TRes>
    implements CopyWith$Input$StringQueryOperatorInput<TRes> {
  _CopyWithStubImpl$Input$StringQueryOperatorInput(this._res);

  TRes _res;

  call({
    String? eq,
    List<String>? $in,
    String? ne,
    List<String>? nin,
    String? regex,
  }) =>
      _res;
}

const possibleTypesMap = <String, Set<String>>{};
