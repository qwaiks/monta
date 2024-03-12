import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$getAllCountries {
  Query$getAllCountries({
    required this.countries,
    this.$__typename = 'Query',
  });

  factory Query$getAllCountries.fromJson(Map<String, dynamic> json) {
    final l$countries = json['countries'];
    final l$$__typename = json['__typename'];
    return Query$getAllCountries(
      countries: (l$countries as List<dynamic>)
          .map((e) => Query$getAllCountries$countries.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$getAllCountries$countries> countries;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$countries = countries;
    _resultData['countries'] = l$countries.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$countries = countries;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$countries.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getAllCountries) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$countries = countries;
    final lOther$countries = other.countries;
    if (l$countries.length != lOther$countries.length) {
      return false;
    }
    for (int i = 0; i < l$countries.length; i++) {
      final l$countries$entry = l$countries[i];
      final lOther$countries$entry = lOther$countries[i];
      if (l$countries$entry != lOther$countries$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getAllCountries on Query$getAllCountries {
  CopyWith$Query$getAllCountries<Query$getAllCountries> get copyWith =>
      CopyWith$Query$getAllCountries(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getAllCountries<TRes> {
  factory CopyWith$Query$getAllCountries(
    Query$getAllCountries instance,
    TRes Function(Query$getAllCountries) then,
  ) = _CopyWithImpl$Query$getAllCountries;

  factory CopyWith$Query$getAllCountries.stub(TRes res) =
      _CopyWithStubImpl$Query$getAllCountries;

  TRes call({
    List<Query$getAllCountries$countries>? countries,
    String? $__typename,
  });
  TRes countries(
      Iterable<Query$getAllCountries$countries> Function(
              Iterable<
                  CopyWith$Query$getAllCountries$countries<
                      Query$getAllCountries$countries>>)
          _fn);
}

class _CopyWithImpl$Query$getAllCountries<TRes>
    implements CopyWith$Query$getAllCountries<TRes> {
  _CopyWithImpl$Query$getAllCountries(
    this._instance,
    this._then,
  );

  final Query$getAllCountries _instance;

  final TRes Function(Query$getAllCountries) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? countries = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getAllCountries(
        countries: countries == _undefined || countries == null
            ? _instance.countries
            : (countries as List<Query$getAllCountries$countries>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes countries(
          Iterable<Query$getAllCountries$countries> Function(
                  Iterable<
                      CopyWith$Query$getAllCountries$countries<
                          Query$getAllCountries$countries>>)
              _fn) =>
      call(
          countries: _fn(_instance.countries
              .map((e) => CopyWith$Query$getAllCountries$countries(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$getAllCountries<TRes>
    implements CopyWith$Query$getAllCountries<TRes> {
  _CopyWithStubImpl$Query$getAllCountries(this._res);

  TRes _res;

  call({
    List<Query$getAllCountries$countries>? countries,
    String? $__typename,
  }) =>
      _res;

  countries(_fn) => _res;
}

const documentNodeQuerygetAllCountries = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getAllCountries'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'countries'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'capital'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'code'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$getAllCountries _parserFn$Query$getAllCountries(
        Map<String, dynamic> data) =>
    Query$getAllCountries.fromJson(data);
typedef OnQueryComplete$Query$getAllCountries = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$getAllCountries?,
);

class Options$Query$getAllCountries
    extends graphql.QueryOptions<Query$getAllCountries> {
  Options$Query$getAllCountries({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getAllCountries? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$getAllCountries? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$getAllCountries(data),
                  ),
          onError: onError,
          document: documentNodeQuerygetAllCountries,
          parserFn: _parserFn$Query$getAllCountries,
        );

  final OnQueryComplete$Query$getAllCountries? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$getAllCountries
    extends graphql.WatchQueryOptions<Query$getAllCountries> {
  WatchOptions$Query$getAllCountries({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getAllCountries? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQuerygetAllCountries,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$getAllCountries,
        );
}

class FetchMoreOptions$Query$getAllCountries extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getAllCountries(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQuerygetAllCountries,
        );
}

extension ClientExtension$Query$getAllCountries on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$getAllCountries>> query$getAllCountries(
          [Options$Query$getAllCountries? options]) async =>
      await this.query(options ?? Options$Query$getAllCountries());
  graphql.ObservableQuery<Query$getAllCountries> watchQuery$getAllCountries(
          [WatchOptions$Query$getAllCountries? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$getAllCountries());
  void writeQuery$getAllCountries({
    required Query$getAllCountries data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQuerygetAllCountries)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$getAllCountries? readQuery$getAllCountries({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQuerygetAllCountries)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$getAllCountries.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$getAllCountries> useQuery$getAllCountries(
        [Options$Query$getAllCountries? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$getAllCountries());
graphql.ObservableQuery<Query$getAllCountries> useWatchQuery$getAllCountries(
        [WatchOptions$Query$getAllCountries? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$getAllCountries());

class Query$getAllCountries$Widget
    extends graphql_flutter.Query<Query$getAllCountries> {
  Query$getAllCountries$Widget({
    widgets.Key? key,
    Options$Query$getAllCountries? options,
    required graphql_flutter.QueryBuilder<Query$getAllCountries> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$getAllCountries(),
          builder: builder,
        );
}

class Query$getAllCountries$countries {
  Query$getAllCountries$countries({
    required this.name,
    this.capital,
    required this.code,
    this.$__typename = 'Country',
  });

  factory Query$getAllCountries$countries.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$capital = json['capital'];
    final l$code = json['code'];
    final l$$__typename = json['__typename'];
    return Query$getAllCountries$countries(
      name: (l$name as String),
      capital: (l$capital as String?),
      code: (l$code as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String? capital;

  final String code;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$capital = capital;
    _resultData['capital'] = l$capital;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$capital = capital;
    final l$code = code;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$capital,
      l$code,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getAllCountries$countries) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$capital = capital;
    final lOther$capital = other.capital;
    if (l$capital != lOther$capital) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getAllCountries$countries
    on Query$getAllCountries$countries {
  CopyWith$Query$getAllCountries$countries<Query$getAllCountries$countries>
      get copyWith => CopyWith$Query$getAllCountries$countries(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getAllCountries$countries<TRes> {
  factory CopyWith$Query$getAllCountries$countries(
    Query$getAllCountries$countries instance,
    TRes Function(Query$getAllCountries$countries) then,
  ) = _CopyWithImpl$Query$getAllCountries$countries;

  factory CopyWith$Query$getAllCountries$countries.stub(TRes res) =
      _CopyWithStubImpl$Query$getAllCountries$countries;

  TRes call({
    String? name,
    String? capital,
    String? code,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getAllCountries$countries<TRes>
    implements CopyWith$Query$getAllCountries$countries<TRes> {
  _CopyWithImpl$Query$getAllCountries$countries(
    this._instance,
    this._then,
  );

  final Query$getAllCountries$countries _instance;

  final TRes Function(Query$getAllCountries$countries) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? capital = _undefined,
    Object? code = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getAllCountries$countries(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        capital:
            capital == _undefined ? _instance.capital : (capital as String?),
        code: code == _undefined || code == null
            ? _instance.code
            : (code as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getAllCountries$countries<TRes>
    implements CopyWith$Query$getAllCountries$countries<TRes> {
  _CopyWithStubImpl$Query$getAllCountries$countries(this._res);

  TRes _res;

  call({
    String? name,
    String? capital,
    String? code,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$getCountryByCode {
  factory Variables$Query$getCountryByCode({required String code}) =>
      Variables$Query$getCountryByCode._({
        r'code': code,
      });

  Variables$Query$getCountryByCode._(this._$data);

  factory Variables$Query$getCountryByCode.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$code = data['code'];
    result$data['code'] = (l$code as String);
    return Variables$Query$getCountryByCode._(result$data);
  }

  Map<String, dynamic> _$data;

  String get code => (_$data['code'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$code = code;
    result$data['code'] = l$code;
    return result$data;
  }

  CopyWith$Variables$Query$getCountryByCode<Variables$Query$getCountryByCode>
      get copyWith => CopyWith$Variables$Query$getCountryByCode(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$getCountryByCode) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$code = code;
    return Object.hashAll([l$code]);
  }
}

abstract class CopyWith$Variables$Query$getCountryByCode<TRes> {
  factory CopyWith$Variables$Query$getCountryByCode(
    Variables$Query$getCountryByCode instance,
    TRes Function(Variables$Query$getCountryByCode) then,
  ) = _CopyWithImpl$Variables$Query$getCountryByCode;

  factory CopyWith$Variables$Query$getCountryByCode.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getCountryByCode;

  TRes call({String? code});
}

class _CopyWithImpl$Variables$Query$getCountryByCode<TRes>
    implements CopyWith$Variables$Query$getCountryByCode<TRes> {
  _CopyWithImpl$Variables$Query$getCountryByCode(
    this._instance,
    this._then,
  );

  final Variables$Query$getCountryByCode _instance;

  final TRes Function(Variables$Query$getCountryByCode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? code = _undefined}) =>
      _then(Variables$Query$getCountryByCode._({
        ..._instance._$data,
        if (code != _undefined && code != null) 'code': (code as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$getCountryByCode<TRes>
    implements CopyWith$Variables$Query$getCountryByCode<TRes> {
  _CopyWithStubImpl$Variables$Query$getCountryByCode(this._res);

  TRes _res;

  call({String? code}) => _res;
}

class Query$getCountryByCode {
  Query$getCountryByCode({
    this.country,
    this.$__typename = 'Query',
  });

  factory Query$getCountryByCode.fromJson(Map<String, dynamic> json) {
    final l$country = json['country'];
    final l$$__typename = json['__typename'];
    return Query$getCountryByCode(
      country: l$country == null
          ? null
          : Query$getCountryByCode$country.fromJson(
              (l$country as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getCountryByCode$country? country;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$country = country;
    _resultData['country'] = l$country?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$country = country;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$country,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getCountryByCode) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$country = country;
    final lOther$country = other.country;
    if (l$country != lOther$country) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getCountryByCode on Query$getCountryByCode {
  CopyWith$Query$getCountryByCode<Query$getCountryByCode> get copyWith =>
      CopyWith$Query$getCountryByCode(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getCountryByCode<TRes> {
  factory CopyWith$Query$getCountryByCode(
    Query$getCountryByCode instance,
    TRes Function(Query$getCountryByCode) then,
  ) = _CopyWithImpl$Query$getCountryByCode;

  factory CopyWith$Query$getCountryByCode.stub(TRes res) =
      _CopyWithStubImpl$Query$getCountryByCode;

  TRes call({
    Query$getCountryByCode$country? country,
    String? $__typename,
  });
  CopyWith$Query$getCountryByCode$country<TRes> get country;
}

class _CopyWithImpl$Query$getCountryByCode<TRes>
    implements CopyWith$Query$getCountryByCode<TRes> {
  _CopyWithImpl$Query$getCountryByCode(
    this._instance,
    this._then,
  );

  final Query$getCountryByCode _instance;

  final TRes Function(Query$getCountryByCode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? country = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getCountryByCode(
        country: country == _undefined
            ? _instance.country
            : (country as Query$getCountryByCode$country?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$getCountryByCode$country<TRes> get country {
    final local$country = _instance.country;
    return local$country == null
        ? CopyWith$Query$getCountryByCode$country.stub(_then(_instance))
        : CopyWith$Query$getCountryByCode$country(
            local$country, (e) => call(country: e));
  }
}

class _CopyWithStubImpl$Query$getCountryByCode<TRes>
    implements CopyWith$Query$getCountryByCode<TRes> {
  _CopyWithStubImpl$Query$getCountryByCode(this._res);

  TRes _res;

  call({
    Query$getCountryByCode$country? country,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$getCountryByCode$country<TRes> get country =>
      CopyWith$Query$getCountryByCode$country.stub(_res);
}

const documentNodeQuerygetCountryByCode = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getCountryByCode'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'code')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'country'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'code'),
            value: VariableNode(name: NameNode(value: 'code')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'capital'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'code'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$getCountryByCode _parserFn$Query$getCountryByCode(
        Map<String, dynamic> data) =>
    Query$getCountryByCode.fromJson(data);
typedef OnQueryComplete$Query$getCountryByCode = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$getCountryByCode?,
);

class Options$Query$getCountryByCode
    extends graphql.QueryOptions<Query$getCountryByCode> {
  Options$Query$getCountryByCode({
    String? operationName,
    required Variables$Query$getCountryByCode variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getCountryByCode? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$getCountryByCode? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null
                        ? null
                        : _parserFn$Query$getCountryByCode(data),
                  ),
          onError: onError,
          document: documentNodeQuerygetCountryByCode,
          parserFn: _parserFn$Query$getCountryByCode,
        );

  final OnQueryComplete$Query$getCountryByCode? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$getCountryByCode
    extends graphql.WatchQueryOptions<Query$getCountryByCode> {
  WatchOptions$Query$getCountryByCode({
    String? operationName,
    required Variables$Query$getCountryByCode variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getCountryByCode? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQuerygetCountryByCode,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$getCountryByCode,
        );
}

class FetchMoreOptions$Query$getCountryByCode extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getCountryByCode({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$getCountryByCode variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQuerygetCountryByCode,
        );
}

extension ClientExtension$Query$getCountryByCode on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$getCountryByCode>> query$getCountryByCode(
          Options$Query$getCountryByCode options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$getCountryByCode> watchQuery$getCountryByCode(
          WatchOptions$Query$getCountryByCode options) =>
      this.watchQuery(options);
  void writeQuery$getCountryByCode({
    required Query$getCountryByCode data,
    required Variables$Query$getCountryByCode variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQuerygetCountryByCode),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$getCountryByCode? readQuery$getCountryByCode({
    required Variables$Query$getCountryByCode variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQuerygetCountryByCode),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$getCountryByCode.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$getCountryByCode>
    useQuery$getCountryByCode(Options$Query$getCountryByCode options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$getCountryByCode> useWatchQuery$getCountryByCode(
        WatchOptions$Query$getCountryByCode options) =>
    graphql_flutter.useWatchQuery(options);

class Query$getCountryByCode$Widget
    extends graphql_flutter.Query<Query$getCountryByCode> {
  Query$getCountryByCode$Widget({
    widgets.Key? key,
    required Options$Query$getCountryByCode options,
    required graphql_flutter.QueryBuilder<Query$getCountryByCode> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$getCountryByCode$country {
  Query$getCountryByCode$country({
    required this.name,
    this.capital,
    required this.code,
    this.$__typename = 'Country',
  });

  factory Query$getCountryByCode$country.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$capital = json['capital'];
    final l$code = json['code'];
    final l$$__typename = json['__typename'];
    return Query$getCountryByCode$country(
      name: (l$name as String),
      capital: (l$capital as String?),
      code: (l$code as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String? capital;

  final String code;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$capital = capital;
    _resultData['capital'] = l$capital;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$capital = capital;
    final l$code = code;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$capital,
      l$code,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getCountryByCode$country) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$capital = capital;
    final lOther$capital = other.capital;
    if (l$capital != lOther$capital) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getCountryByCode$country
    on Query$getCountryByCode$country {
  CopyWith$Query$getCountryByCode$country<Query$getCountryByCode$country>
      get copyWith => CopyWith$Query$getCountryByCode$country(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getCountryByCode$country<TRes> {
  factory CopyWith$Query$getCountryByCode$country(
    Query$getCountryByCode$country instance,
    TRes Function(Query$getCountryByCode$country) then,
  ) = _CopyWithImpl$Query$getCountryByCode$country;

  factory CopyWith$Query$getCountryByCode$country.stub(TRes res) =
      _CopyWithStubImpl$Query$getCountryByCode$country;

  TRes call({
    String? name,
    String? capital,
    String? code,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getCountryByCode$country<TRes>
    implements CopyWith$Query$getCountryByCode$country<TRes> {
  _CopyWithImpl$Query$getCountryByCode$country(
    this._instance,
    this._then,
  );

  final Query$getCountryByCode$country _instance;

  final TRes Function(Query$getCountryByCode$country) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? capital = _undefined,
    Object? code = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getCountryByCode$country(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        capital:
            capital == _undefined ? _instance.capital : (capital as String?),
        code: code == _undefined || code == null
            ? _instance.code
            : (code as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getCountryByCode$country<TRes>
    implements CopyWith$Query$getCountryByCode$country<TRes> {
  _CopyWithStubImpl$Query$getCountryByCode$country(this._res);

  TRes _res;

  call({
    String? name,
    String? capital,
    String? code,
    String? $__typename,
  }) =>
      _res;
}
