import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'schema.graphql.dart';

class Query$FetchViewer {
  Query$FetchViewer({
    required this.viewer,
    this.$__typename = 'Query',
  });

  factory Query$FetchViewer.fromJson(Map<String, dynamic> json) {
    final l$viewer = json['viewer'];
    final l$$__typename = json['__typename'];
    return Query$FetchViewer(
      viewer:
          Query$FetchViewer$viewer.fromJson((l$viewer as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FetchViewer$viewer viewer;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$viewer = viewer;
    resultData['viewer'] = l$viewer.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$viewer = viewer;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$viewer,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FetchViewer || runtimeType != other.runtimeType) {
      return false;
    }
    final l$viewer = viewer;
    final lOther$viewer = other.viewer;
    if (l$viewer != lOther$viewer) {
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

extension UtilityExtension$Query$FetchViewer on Query$FetchViewer {
  CopyWith$Query$FetchViewer<Query$FetchViewer> get copyWith =>
      CopyWith$Query$FetchViewer(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchViewer<TRes> {
  factory CopyWith$Query$FetchViewer(
    Query$FetchViewer instance,
    TRes Function(Query$FetchViewer) then,
  ) = _CopyWithImpl$Query$FetchViewer;

  factory CopyWith$Query$FetchViewer.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchViewer;

  TRes call({
    Query$FetchViewer$viewer? viewer,
    String? $__typename,
  });
  CopyWith$Query$FetchViewer$viewer<TRes> get viewer;
}

class _CopyWithImpl$Query$FetchViewer<TRes>
    implements CopyWith$Query$FetchViewer<TRes> {
  _CopyWithImpl$Query$FetchViewer(
    this._instance,
    this._then,
  );

  final Query$FetchViewer _instance;

  final TRes Function(Query$FetchViewer) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? viewer = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchViewer(
        viewer: viewer == _undefined || viewer == null
            ? _instance.viewer
            : (viewer as Query$FetchViewer$viewer),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Query$FetchViewer$viewer<TRes> get viewer {
    final local$viewer = _instance.viewer;
    return CopyWith$Query$FetchViewer$viewer(
        local$viewer, (e) => call(viewer: e));
  }
}

class _CopyWithStubImpl$Query$FetchViewer<TRes>
    implements CopyWith$Query$FetchViewer<TRes> {
  _CopyWithStubImpl$Query$FetchViewer(this._res);

  final TRes _res;

  @override
  call({
    Query$FetchViewer$viewer? viewer,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Query$FetchViewer$viewer<TRes> get viewer =>
      CopyWith$Query$FetchViewer$viewer.stub(_res);
}

const documentNodeQueryFetchViewer = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchViewer'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'viewer'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'orgs'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'k1'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'k2'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'userOrgRelation'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'k1'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'k2'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'role'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'isDefault'),
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
          FieldNode(
            name: NameNode(value: 'k1'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'k2'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
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
Query$FetchViewer _parserFn$Query$FetchViewer(Map<String, dynamic> data) =>
    Query$FetchViewer.fromJson(data);
typedef OnQueryComplete$Query$FetchViewer = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FetchViewer?,
);

class Options$Query$FetchViewer
    extends graphql.QueryOptions<Query$FetchViewer> {
  Options$Query$FetchViewer({
    super.operationName,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchViewer? typedOptimisticResult,
    super.pollInterval,
    super.context,
    OnQueryComplete$Query$FetchViewer? onComplete,
    super.onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$FetchViewer(data),
                  ),
          document: documentNodeQueryFetchViewer,
          parserFn: _parserFn$Query$FetchViewer,
        );

  final OnQueryComplete$Query$FetchViewer? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FetchViewer
    extends graphql.WatchQueryOptions<Query$FetchViewer> {
  WatchOptions$Query$FetchViewer({
    super.operationName,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchViewer? typedOptimisticResult,
    super.context,
    super.pollInterval,
    super.eagerlyFetchResults,
    super.carryForwardDataOnException,
    super.fetchResults,
  }) : super(
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          document: documentNodeQueryFetchViewer,
          parserFn: _parserFn$Query$FetchViewer,
        );
}

class FetchMoreOptions$Query$FetchViewer extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchViewer({required super.updateQuery})
      : super(
          document: documentNodeQueryFetchViewer,
        );
}

extension ClientExtension$Query$FetchViewer on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchViewer>> query$FetchViewer(
          [Options$Query$FetchViewer? options]) async =>
      await query(options ?? Options$Query$FetchViewer());
  graphql.ObservableQuery<Query$FetchViewer> watchQuery$FetchViewer(
          [WatchOptions$Query$FetchViewer? options]) =>
      watchQuery(options ?? WatchOptions$Query$FetchViewer());
  void writeQuery$FetchViewer({
    required Query$FetchViewer data,
    bool broadcast = true,
  }) =>
      writeQuery(
        const graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryFetchViewer)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FetchViewer? readQuery$FetchViewer({bool optimistic = true}) {
    final result = readQuery(
      const graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryFetchViewer)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FetchViewer.fromJson(result);
  }
}

class Query$FetchViewer$viewer {
  Query$FetchViewer$viewer({
    this.orgs,
    this.k1,
    this.k2,
    this.name,
    this.$__typename = 'User',
  });

  factory Query$FetchViewer$viewer.fromJson(Map<String, dynamic> json) {
    final l$orgs = json['orgs'];
    final l$k1 = json['k1'];
    final l$k2 = json['k2'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$FetchViewer$viewer(
      orgs: (l$orgs as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$FetchViewer$viewer$orgs.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      k1: (l$k1 as String?),
      k2: (l$k2 as String?),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FetchViewer$viewer$orgs?>? orgs;

  final String? k1;

  final String? k2;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$orgs = orgs;
    resultData['orgs'] = l$orgs?.map((e) => e?.toJson()).toList();
    final l$k1 = k1;
    resultData['k1'] = l$k1;
    final l$k2 = k2;
    resultData['k2'] = l$k2;
    final l$name = name;
    resultData['name'] = l$name;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$orgs = orgs;
    final l$k1 = k1;
    final l$k2 = k2;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$orgs == null ? null : Object.hashAll(l$orgs.map((v) => v)),
      l$k1,
      l$k2,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FetchViewer$viewer ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orgs = orgs;
    final lOther$orgs = other.orgs;
    if (l$orgs != null && lOther$orgs != null) {
      if (l$orgs.length != lOther$orgs.length) {
        return false;
      }
      for (int i = 0; i < l$orgs.length; i++) {
        final l$orgs$entry = l$orgs[i];
        final lOther$orgs$entry = lOther$orgs[i];
        if (l$orgs$entry != lOther$orgs$entry) {
          return false;
        }
      }
    } else if (l$orgs != lOther$orgs) {
      return false;
    }
    final l$k1 = k1;
    final lOther$k1 = other.k1;
    if (l$k1 != lOther$k1) {
      return false;
    }
    final l$k2 = k2;
    final lOther$k2 = other.k2;
    if (l$k2 != lOther$k2) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$FetchViewer$viewer
    on Query$FetchViewer$viewer {
  CopyWith$Query$FetchViewer$viewer<Query$FetchViewer$viewer> get copyWith =>
      CopyWith$Query$FetchViewer$viewer(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchViewer$viewer<TRes> {
  factory CopyWith$Query$FetchViewer$viewer(
    Query$FetchViewer$viewer instance,
    TRes Function(Query$FetchViewer$viewer) then,
  ) = _CopyWithImpl$Query$FetchViewer$viewer;

  factory CopyWith$Query$FetchViewer$viewer.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchViewer$viewer;

  TRes call({
    List<Query$FetchViewer$viewer$orgs?>? orgs,
    String? k1,
    String? k2,
    String? name,
    String? $__typename,
  });
  TRes orgs(
      Iterable<Query$FetchViewer$viewer$orgs?>? Function(
              Iterable<
                  CopyWith$Query$FetchViewer$viewer$orgs<
                      Query$FetchViewer$viewer$orgs>?>?)
          fn);
}

class _CopyWithImpl$Query$FetchViewer$viewer<TRes>
    implements CopyWith$Query$FetchViewer$viewer<TRes> {
  _CopyWithImpl$Query$FetchViewer$viewer(
    this._instance,
    this._then,
  );

  final Query$FetchViewer$viewer _instance;

  final TRes Function(Query$FetchViewer$viewer) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? orgs = _undefined,
    Object? k1 = _undefined,
    Object? k2 = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchViewer$viewer(
        orgs: orgs == _undefined
            ? _instance.orgs
            : (orgs as List<Query$FetchViewer$viewer$orgs?>?),
        k1: k1 == _undefined ? _instance.k1 : (k1 as String?),
        k2: k2 == _undefined ? _instance.k2 : (k2 as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  TRes orgs(
          Iterable<Query$FetchViewer$viewer$orgs?>? Function(
                  Iterable<
                      CopyWith$Query$FetchViewer$viewer$orgs<
                          Query$FetchViewer$viewer$orgs>?>?)
              fn) =>
      call(
          orgs: fn(_instance.orgs?.map((e) => e == null
              ? null
              : CopyWith$Query$FetchViewer$viewer$orgs(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$FetchViewer$viewer<TRes>
    implements CopyWith$Query$FetchViewer$viewer<TRes> {
  _CopyWithStubImpl$Query$FetchViewer$viewer(this._res);

  final TRes _res;

  @override
  call({
    List<Query$FetchViewer$viewer$orgs?>? orgs,
    String? k1,
    String? k2,
    String? name,
    String? $__typename,
  }) =>
      _res;

  @override
  orgs(fn) => _res;
}

class Query$FetchViewer$viewer$orgs {
  Query$FetchViewer$viewer$orgs({
    this.k1,
    this.k2,
    this.name,
    this.userOrgRelation,
    this.$__typename = 'Org',
  });

  factory Query$FetchViewer$viewer$orgs.fromJson(Map<String, dynamic> json) {
    final l$k1 = json['k1'];
    final l$k2 = json['k2'];
    final l$name = json['name'];
    final l$userOrgRelation = json['userOrgRelation'];
    final l$$__typename = json['__typename'];
    return Query$FetchViewer$viewer$orgs(
      k1: (l$k1 as String?),
      k2: (l$k2 as String?),
      name: (l$name as String?),
      userOrgRelation: l$userOrgRelation == null
          ? null
          : Query$FetchViewer$viewer$orgs$userOrgRelation.fromJson(
              (l$userOrgRelation as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? k1;

  final String? k2;

  final String? name;

  final Query$FetchViewer$viewer$orgs$userOrgRelation? userOrgRelation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$k1 = k1;
    resultData['k1'] = l$k1;
    final l$k2 = k2;
    resultData['k2'] = l$k2;
    final l$name = name;
    resultData['name'] = l$name;
    final l$userOrgRelation = userOrgRelation;
    resultData['userOrgRelation'] = l$userOrgRelation?.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$k1 = k1;
    final l$k2 = k2;
    final l$name = name;
    final l$userOrgRelation = userOrgRelation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$k1,
      l$k2,
      l$name,
      l$userOrgRelation,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FetchViewer$viewer$orgs ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$k1 = k1;
    final lOther$k1 = other.k1;
    if (l$k1 != lOther$k1) {
      return false;
    }
    final l$k2 = k2;
    final lOther$k2 = other.k2;
    if (l$k2 != lOther$k2) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$userOrgRelation = userOrgRelation;
    final lOther$userOrgRelation = other.userOrgRelation;
    if (l$userOrgRelation != lOther$userOrgRelation) {
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

extension UtilityExtension$Query$FetchViewer$viewer$orgs
    on Query$FetchViewer$viewer$orgs {
  CopyWith$Query$FetchViewer$viewer$orgs<Query$FetchViewer$viewer$orgs>
      get copyWith => CopyWith$Query$FetchViewer$viewer$orgs(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchViewer$viewer$orgs<TRes> {
  factory CopyWith$Query$FetchViewer$viewer$orgs(
    Query$FetchViewer$viewer$orgs instance,
    TRes Function(Query$FetchViewer$viewer$orgs) then,
  ) = _CopyWithImpl$Query$FetchViewer$viewer$orgs;

  factory CopyWith$Query$FetchViewer$viewer$orgs.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchViewer$viewer$orgs;

  TRes call({
    String? k1,
    String? k2,
    String? name,
    Query$FetchViewer$viewer$orgs$userOrgRelation? userOrgRelation,
    String? $__typename,
  });
  CopyWith$Query$FetchViewer$viewer$orgs$userOrgRelation<TRes>
      get userOrgRelation;
}

class _CopyWithImpl$Query$FetchViewer$viewer$orgs<TRes>
    implements CopyWith$Query$FetchViewer$viewer$orgs<TRes> {
  _CopyWithImpl$Query$FetchViewer$viewer$orgs(
    this._instance,
    this._then,
  );

  final Query$FetchViewer$viewer$orgs _instance;

  final TRes Function(Query$FetchViewer$viewer$orgs) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? k1 = _undefined,
    Object? k2 = _undefined,
    Object? name = _undefined,
    Object? userOrgRelation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchViewer$viewer$orgs(
        k1: k1 == _undefined ? _instance.k1 : (k1 as String?),
        k2: k2 == _undefined ? _instance.k2 : (k2 as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        userOrgRelation: userOrgRelation == _undefined
            ? _instance.userOrgRelation
            : (userOrgRelation
                as Query$FetchViewer$viewer$orgs$userOrgRelation?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Query$FetchViewer$viewer$orgs$userOrgRelation<TRes>
      get userOrgRelation {
    final local$userOrgRelation = _instance.userOrgRelation;
    return local$userOrgRelation == null
        ? CopyWith$Query$FetchViewer$viewer$orgs$userOrgRelation.stub(
            _then(_instance))
        : CopyWith$Query$FetchViewer$viewer$orgs$userOrgRelation(
            local$userOrgRelation, (e) => call(userOrgRelation: e));
  }
}

class _CopyWithStubImpl$Query$FetchViewer$viewer$orgs<TRes>
    implements CopyWith$Query$FetchViewer$viewer$orgs<TRes> {
  _CopyWithStubImpl$Query$FetchViewer$viewer$orgs(this._res);

  final TRes _res;

  @override
  call({
    String? k1,
    String? k2,
    String? name,
    Query$FetchViewer$viewer$orgs$userOrgRelation? userOrgRelation,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Query$FetchViewer$viewer$orgs$userOrgRelation<TRes>
      get userOrgRelation =>
          CopyWith$Query$FetchViewer$viewer$orgs$userOrgRelation.stub(_res);
}

class Query$FetchViewer$viewer$orgs$userOrgRelation {
  Query$FetchViewer$viewer$orgs$userOrgRelation({
    this.k1,
    this.k2,
    this.role,
    this.isDefault,
    this.$__typename = 'UserOrgRelation',
  });

  factory Query$FetchViewer$viewer$orgs$userOrgRelation.fromJson(
      Map<String, dynamic> json) {
    final l$k1 = json['k1'];
    final l$k2 = json['k2'];
    final l$role = json['role'];
    final l$isDefault = json['isDefault'];
    final l$$__typename = json['__typename'];
    return Query$FetchViewer$viewer$orgs$userOrgRelation(
      k1: (l$k1 as String?),
      k2: (l$k2 as String?),
      role:
          l$role == null ? null : fromJson$Enum$UserOrgRole((l$role as String)),
      isDefault: (l$isDefault as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? k1;

  final String? k2;

  final Enum$UserOrgRole? role;

  final bool? isDefault;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$k1 = k1;
    resultData['k1'] = l$k1;
    final l$k2 = k2;
    resultData['k2'] = l$k2;
    final l$role = role;
    resultData['role'] =
        l$role == null ? null : toJson$Enum$UserOrgRole(l$role);
    final l$isDefault = isDefault;
    resultData['isDefault'] = l$isDefault;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$k1 = k1;
    final l$k2 = k2;
    final l$role = role;
    final l$isDefault = isDefault;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$k1,
      l$k2,
      l$role,
      l$isDefault,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FetchViewer$viewer$orgs$userOrgRelation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$k1 = k1;
    final lOther$k1 = other.k1;
    if (l$k1 != lOther$k1) {
      return false;
    }
    final l$k2 = k2;
    final lOther$k2 = other.k2;
    if (l$k2 != lOther$k2) {
      return false;
    }
    final l$role = role;
    final lOther$role = other.role;
    if (l$role != lOther$role) {
      return false;
    }
    final l$isDefault = isDefault;
    final lOther$isDefault = other.isDefault;
    if (l$isDefault != lOther$isDefault) {
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

extension UtilityExtension$Query$FetchViewer$viewer$orgs$userOrgRelation
    on Query$FetchViewer$viewer$orgs$userOrgRelation {
  CopyWith$Query$FetchViewer$viewer$orgs$userOrgRelation<
          Query$FetchViewer$viewer$orgs$userOrgRelation>
      get copyWith => CopyWith$Query$FetchViewer$viewer$orgs$userOrgRelation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchViewer$viewer$orgs$userOrgRelation<TRes> {
  factory CopyWith$Query$FetchViewer$viewer$orgs$userOrgRelation(
    Query$FetchViewer$viewer$orgs$userOrgRelation instance,
    TRes Function(Query$FetchViewer$viewer$orgs$userOrgRelation) then,
  ) = _CopyWithImpl$Query$FetchViewer$viewer$orgs$userOrgRelation;

  factory CopyWith$Query$FetchViewer$viewer$orgs$userOrgRelation.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FetchViewer$viewer$orgs$userOrgRelation;

  TRes call({
    String? k1,
    String? k2,
    Enum$UserOrgRole? role,
    bool? isDefault,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchViewer$viewer$orgs$userOrgRelation<TRes>
    implements CopyWith$Query$FetchViewer$viewer$orgs$userOrgRelation<TRes> {
  _CopyWithImpl$Query$FetchViewer$viewer$orgs$userOrgRelation(
    this._instance,
    this._then,
  );

  final Query$FetchViewer$viewer$orgs$userOrgRelation _instance;

  final TRes Function(Query$FetchViewer$viewer$orgs$userOrgRelation) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? k1 = _undefined,
    Object? k2 = _undefined,
    Object? role = _undefined,
    Object? isDefault = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchViewer$viewer$orgs$userOrgRelation(
        k1: k1 == _undefined ? _instance.k1 : (k1 as String?),
        k2: k2 == _undefined ? _instance.k2 : (k2 as String?),
        role: role == _undefined ? _instance.role : (role as Enum$UserOrgRole?),
        isDefault: isDefault == _undefined
            ? _instance.isDefault
            : (isDefault as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchViewer$viewer$orgs$userOrgRelation<TRes>
    implements CopyWith$Query$FetchViewer$viewer$orgs$userOrgRelation<TRes> {
  _CopyWithStubImpl$Query$FetchViewer$viewer$orgs$userOrgRelation(this._res);

  final TRes _res;

  @override
  call({
    String? k1,
    String? k2,
    Enum$UserOrgRole? role,
    bool? isDefault,
    String? $__typename,
  }) =>
      _res;
}
